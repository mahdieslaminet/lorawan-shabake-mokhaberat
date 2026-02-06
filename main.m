clc; clear; close all;

% پارامترهای شبکه
areaRadius = 1000;          
gatewayPos = [0 0];         
txPower_dBm = 14;           
packetSize = 50 * 8;        
txInterval = 300;           
simTime = 3600;             

nodeCounts = [10 20 50 100];
SF_values = [7 9 12];

% ذخیره نتایج
PDR_results = zeros(length(nodeCounts), length(SF_values));
Energy_results = zeros(length(nodeCounts), length(SF_values));

for i = 1:length(nodeCounts)
    N = nodeCounts(i);
    nodes = generate_nodes(N, areaRadius);
    distances = calculate_distance(nodes, gatewayPos);
    PL = path_loss_model(distances);

    for j = 1:length(SF_values)
        SF = SF_values(j);

        successPackets = 0;
        totalPackets = N * floor(simTime / txInterval);
        totalEnergy = 0;

        for k = 1:N
            rxPower = txPower_dBm - PL(k);

            for p = 1:floor(simTime / txInterval)
                if packet_success_probability(rxPower, SF)
                    successPackets = successPackets + 1;
                end
                totalEnergy = totalEnergy + energy_model(txPower_dBm, 0.1);
            end
        end

        PDR_results(i,j) = successPackets / totalPackets;
        Energy_results(i,j) = totalEnergy;
    end
end

% رسم نمودارها
figure;
plot(nodeCounts, PDR_results, '-o','LineWidth',2);
xlabel('Number of Nodes');
ylabel('Packet Delivery Ratio');
legend('SF=7','SF=9','SF=12');
grid on;

figure;
plot(nodeCounts, Energy_results, '-s','LineWidth',2);
xlabel('Number of Nodes');
ylabel('Total Energy Consumption (J)');
legend('SF=7','SF=9','SF=12');
grid on;
