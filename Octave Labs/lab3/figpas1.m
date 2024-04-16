function figpas1(fig, pas)
    t = 0:pas:pi;

    [x, y, z] = xyz(t);

    vx = diff(x) ./ diff(t);
    vy = diff(y) ./ diff(t);
    vz = diff(z) ./ diff(t);
    ax = diff(vx) ./ diff(t(1:end-1));
    ay = diff(vy) ./ diff(t(1:end-1));
    az = diff(vz) ./ diff(t(1:end-1));

    timp_aleatoriu = rand * (max(t) - min(t)) + min(t);
    [~, idx] = min(abs(t - timp_aleatoriu));

    v = sqrt(vx(idx)^2 + vy(idx)^2 + vz(idx)^2);

    a = sqrt(ax(idx)^2 + ay(idx)^2 + az(idx)^2);

    at = (vx(idx) * ax(idx) + vy(idx) * ay(idx) + vz(idx) * az(idx)) / v;

    an = sqrt(a^2 - at^2);

    raza_curburii = v^2 / an;

    figure(fig);
    subplot(2, 1, 1);
    plot3(x, y, z, 'b-', x(idx), y(idx), z(idx), 'ro');
    title('Traiectoria punctului');
    xlabel('x');
    ylabel('y');
    zlabel('z');
    grid on;

    subplot(2, 1, 2);
    plot(t(1:end-1), vx, 'r-', t(1:end-1), vy, 'b-', t(1:end-1), vz, 'g-', ...
         t(1:end-2), ax, 'm-', t(1:end-2), ay, 'c-', t(1:end-2), az, 'y-');
    title('Vectorii de viteza si acceleratie');
    xlabel('Timp');
    ylabel('Viteza/Acceleratie');
    legend('Viteza_x', 'Viteza_y', 'Viteza_z', 'Accel_x', 'Accel_y', 'Accel_z');
    grid on;

    fprintf('Pozitia punctului pentru timpul aleatoriu %.2f: x = %.2f, y = %.2f, z = %.2f\n', ...
            timp_aleatoriu, x(idx), y(idx), z(idx));

    fprintf('Tabel cu rezultatele:\n');
    fprintf('--------------------------------------------------------------------------------------------------------\n');
    fprintf('| Timp_aleatoriu | Viteza | Acceleratie | Acceleratie_tangentiala | Acceleratie_normala | Raza_curburii |\n');
    fprintf('--------------------------------------------------------------------------------------------------------\n');
    fprintf('| %14.2f | %6.2f | %11.2f | %22.2f | %18.2f | %13.2f |\n', timp_aleatoriu, v, a, at, an, raza_curburii);
    fprintf('--------------------------------------------------------------------------------------------------------\n');

end
