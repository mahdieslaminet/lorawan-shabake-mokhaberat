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

