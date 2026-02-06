function nodes = generate_nodes(N, radius)
% تولید مختصات تصادفی نودها در یک ناحیه دایره‌ای
% ورودی:
%   N      - تعداد نودها
%   radius - شعاع ناحیه
% خروجی:
%   nodes  - مختصات x و y نودها

r = radius * sqrt(rand(N,1));
theta = 2*pi*rand(N,1);
x = r .* cos(theta);
y = r .* sin(theta);
nodes = [x y];

end
