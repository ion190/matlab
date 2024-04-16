function [x, y] = xy(t)
    x = 2 * t .* cos(atan(t));
    y = 3 * t .* sin(t.^2);
end
