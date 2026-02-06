%% LoRaWAN IoT Simulation - Main Script
clear; clc; close all;

%% پارامترهای شبکه
N = 50;                  % تعداد نودها
areaRadius = 1000;       % شعاع ناحیه (متر)
txPower_dBm = 10;        % توان ارسال (dBm)
gateway = [0 0];         % مختصات Gateway
packetSize = 20;          % اندازه بسته (بایت)
SFs = [7 9 12];           % Spreading Factors

%% فولدر ذخیره نتایج
resultsFolder = 'results';
if ~exist(resultsFolder,'dir')
    mkdir(resultsFolder);
end

%% تولید نودها
nodes = generate_nodes(N, areaRadius);

%% محاسبه فاصله و تلفات مسیر
dist = calculate_distance(nodes, gateway);
PL = path_loss_model(dist);
rxPower_dBm = txPower_dBm - PL;

%% نقشه حساسیت برای هر SF
sensitivityMap = containers.Map([7 9 12], [-123 -126 -137]);

%% محاسبه PDR و انرژی برای هر SF
totalPackets = 100;  % تعداد بسته‌ها برای هر نود
PDR_results = zeros(1,length(SFs));
totalEnergy  = zeros(1,length(SFs));

for j = 1:length(SFs)
    SF = SFs(j);
    sensitivity_dB = sensitivityMap(SF);
    
    successPackets = 0;
    
    % حلقه روی نودها
    for i = 1:N
        if rxPower_dBm(i) > sensitivity_dB
            successPackets = successPackets + totalPackets;
        end
    end
    
    PDR_results(j) = successPackets/(N*totalPackets);
    
    % محاسبه انرژی بر اساس SF
    BW = 125e3;
    Rb = (SF*BW)/(2^SF);
    Tpkt = packetSize*8 / Rb;
    txPower_W = 10^((txPower_dBm-30)/10);
    E_pkt = txPower_W * Tpkt * N;  % انرژی کل شبکه
    totalEnergy(j) = E_pkt;
end

%% نمایش نتایج
disp('PDR برای هر SF:');
disp(PDR_results);

disp('Energy (J) برای هر SF:');
disp(totalEnergy);

%% رسم نمودارها و ذخیره خودکار
figure;
subplot(1,2,1);
bar(SFs, PDR_results);
xlabel('SF'); ylabel('PDR');
title('Packet Delivery Ratio');
saveas(gcf, fullfile(resultsFolder,'PDR_vs_SF.png'));

subplot(1,2,2);
bar(SFs, totalEnergy);
xlabel('SF'); ylabel('Energy (J)');
title('Energy Consumption per SF');
saveas(gcf, fullfile(resultsFolder,'Energy_vs_SF.png'));

% ذخیره کل figure کنار هم
saveas(gcf, fullfile(resultsFolder,'LoRaWAN_Simulation_Results.png'));
