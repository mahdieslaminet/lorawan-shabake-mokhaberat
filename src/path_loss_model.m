function PL = path_loss_model(d)
% مدل ساده تلفات مسیر LoRaWAN
% ورودی:
%   d - فاصله نودها تا Gateway (متر)
% خروجی:
%   PL - تلفات مسیر به dB

PL0 = 32.44;  % تلفات مرجع (dB)
n = 2.7;      % ضریب تلفات مسیر
PL = PL0 + 10*n*log10(d + 1); % +1 برای جلوگیری از log(0)

end
