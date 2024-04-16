function figpas(fig, pas)
    t = 0:pas:4*pi;

    [x, y] = xy(t);

    vx = diff(x) ./ diff(t);
    vy = diff(y) ./ diff(t);
    ax = diff(vx) ./ diff(t(1:end-1));
    ay = diff(vy) ./ diff(t(1:end-1));

    timp_aleatoriu = rand * (max(t) - min(t)) + min(t);
    [~, idx] = min(abs(t - timp_aleatoriu));

    figure(fig);
    subplot(2, 1, 1);
    plot(x, y, 'b-', x(idx), y(idx), 'ro');
    title('Traiectoria punctului');
    xlabel('x');
    ylabel('y');
    grid on;

    subplot(2, 1, 2);
    plot(t(1:end-1), vx, 'r-', t(1:end-1), vy, 'b-', ...
         t(1:end-2), ax, 'm-', t(1:end-2), ay, 'g-');
    title('Vectorii de viteza si acceleratie');
    xlabel('Timp');
    ylabel('Viteza/Acceleratie');
    legend('Viteza_x', 'Viteza_y', 'Accel_x', 'Accel_y');
    grid on;

    fprintf('Pozitia punctului pentru timpul aleatoriu %.2f: x = %.2f, y = %.2f\n', ...
            timp_aleatoriu, x(idx), y(idx));

end
