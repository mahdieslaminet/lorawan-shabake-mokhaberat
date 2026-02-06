function E = energy_model(txPower_dBm, packetTime)
% محاسبه انرژی مصرفی هر بسته
% ورودی:
%   txPower_dBm - توان ارسال (dBm)
%   packetTime  - مدت زمان ارسال بسته (ثانیه)
% خروجی:
%   E           - انرژی مصرفی (Joule)

txPower_W = 10^((txPower_dBm - 30)/10); % تبدیل dBm به وات
E = txPower_W * packetTime;

end
