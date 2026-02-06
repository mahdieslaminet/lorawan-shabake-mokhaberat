function E = energy_model(txPower_dBm, packetTime)
    txPower_W = 10^((txPower_dBm - 30)/10);
    E = txPower_W * packetTime;
end
