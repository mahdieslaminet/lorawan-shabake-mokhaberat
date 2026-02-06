function Psucc = packet_success_probability(rxPower, SF)
% محاسبه احتمال موفقیت ارسال بسته بر اساس توان دریافت و SF
% ورودی:
%   rxPower - توان دریافت شده (dBm)
%   SF      - Spreading Factor (7,9,12)
% خروجی:
%   Psucc   - احتمال موفقیت (0 یا 1)

sensitivityMap = containers.Map([7 9 12], [-123 -126 -137]);

if rxPower > sensitivityMap(SF)
    Psucc = 1;
else
    Psucc = 0;
end

end
