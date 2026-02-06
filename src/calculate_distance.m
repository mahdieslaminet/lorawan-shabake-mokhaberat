function d = calculate_distance(nodes, gateway)
% محاسبه فاصله هر نود تا Gateway
% ورودی:
%   nodes   - مختصات نودها
%   gateway - مختصات Gateway
% خروجی:
%   d       - فاصله هر نود تا Gateway

d = sqrt((nodes(:,1) - gateway(1)).^2 + (nodes(:,2) - gateway(2)).^2);

end
