function [x, y, z] = xyz(t)
    x = 2 ./ (t + 0.1) .* cos(2 * t);
    y = (t + 1).^0.5 .* sin(t);
    z = 2 * sqrt(t);
end