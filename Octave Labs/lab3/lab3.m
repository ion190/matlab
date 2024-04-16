% Task 1
x = [0:0.05:1];
y = func(x);

figure;
plot(x, y);
grid on;
xlabel('x');
ylabel('y');
title('Plot of y = func(x)');

hold on;
figure;
fplot(@func, [0, 1]);


% Task 2
figpas(3, 0.1);


% Task 3
figpas1(4, 0.1);

