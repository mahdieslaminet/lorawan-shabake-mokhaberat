% sim_main.m
% Main script for LoRaWAN PDR & energy simulation

clc; clear; close all;

%% Parameters
areaRadius = 1000;
gatewayPos = [0 0];
txPower_dBm = 14;
packetSize = 50 * 8;
txInterval = 300;
simTime = 3600;

nodeCounts = [10 20 50 100];
SF_values = [7 9 12];

% ensure functions folder is on path
addpath('functions');

%% Run simulation (example structure)
PDR_results = zeros(length(nodeCounts), length(SF_values));
Energy_results = zeros(length(nodeCounts), length(SF_values));

for i = 1:length(nodeCounts)
    N = nodeCounts(i);
    nodes = generate_nodes(N, areaRadius);
    distances = calculate_distance(nodes, gatewayPos);
    PL = path_loss_model(distances);

    for j = 1:length(SF_values)
        SF = SF_values(j);
        % ... (مثل کد شما)
    end
end

% save results
if ~exist('results','dir')
    mkdir('results');
end
save('results/simulation_results.mat','PDR_results','Energy_results','nodeCounts','SF_values');
