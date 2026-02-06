function Psucc = packet_success_probability(rxPower, SF)
    % آستانه حساسیت گیرنده برای SFهای مختلف
    sensitivity = containers.Map([7 9 12], [-123 -126 -137]);

    if rxPower > sensitivity(SF)
        Psucc = 1;
    else
        Psucc = 0;
    end
end
