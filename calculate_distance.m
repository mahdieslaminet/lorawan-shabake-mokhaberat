function d = calculate_distance(nodes, gateway)
    d = sqrt((nodes(:,1)-gateway(1)).^2 + ...
             (nodes(:,2)-gateway(2)).^2);
end
