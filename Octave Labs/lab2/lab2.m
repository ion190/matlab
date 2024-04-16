clc ;
clear ;
close all;

% ex 2
x=[-pi:0.1:4*pi];
y=x.*sin(x.^2);
y1=x.^2 .*cos(x);

figure(1);
plot(x,y,'--','Color','b');
legend({'f(x) = x*sin(x^2)'},'Location','southwest');
grid on
title('Functia f(x)')
xlabel('Axa X')
ylabel('Axa Y')

figure(2);
plot(x,y1,'-o','Color','r');
grid on
legend({'g(x) = x^2*cos(x)'},'Location','southwest');
title('Functia g(x)')
xlabel('Axa X')
ylabel('Axa Y')

figure(3);
plot(x,y,'--',x,y1,'-o');
grid on;
title('Functia g(x) si f(x)')
legend({'g(x) = x^2*cos(x)','f(x) = x*sin(x^2)'},'Location','southwest');
xlabel('Axa X')
ylabel('Axa Y')

figure(4)
subplot(3,1,1)
x=[-pi:0.1:4*pi];
y=x.*sin(x.^2);
plot(x,y,'--','Color','b');
grid on;
legend({'f(x) = x*sin(x^2)'},'Location','southwest');
title('Functia f(x)')
xlabel('Axa X')
ylabel('Axa Y')

subplot(3,1,2)
x=[-pi:0.1:4*pi];
y1=x.^2 .*cos(x);
plot(x,y1,'-o','Color','r');
legend({'g(x) = x^2*cos(x)'},'Location','southwest');
grid on;
title('Functia g(x)')
xlabel('Axa X')
ylabel('Axa Y')

subplot(3,1,3)
x=[-pi:0.1:4*pi];
y=x.*sin(x.^2);
y1=x.^2 .*cos(x);
plot(x,y,'--',x,y1,'-o');
grid on
title('Functia g(x) si f(x)')
legend({'g(x) = x^2*cos(x)','f(x) = x*sin(x^2)'},'Location','southwest');
xlabel('Axa X')
ylabel('Axa Y')

figure(5)
subplot(1,3,1)
x=[-pi:0.1:4*pi];
y=x.*sin(x.^2);
plot(x,y,'--','Color','b');
legend({'f(x) = x*sin(x^2)'},'Location','southwest');
grid on;
title('Functia f(x)')
xlabel('Axa X')
ylabel('Axa Y')

subplot(1,3,2)
x=[-pi:0.1:4*pi];
y1=x.^2 .*cos(x);
plot(x,y1,'-o','Color','r');
legend({'g(x) = x^2*cos(x)'},'Location','southwest');
grid on;
title('Functia g(x)')
xlabel('Axa X')
ylabel('Axa Y')

subplot(1,3,3)
x=[-pi:0.1:4*pi];
y=x.*sin(x.^2);
y1=x.^2 .*cos(x);
plot(x,y,'--',x,y1,'-o');
grid on
title('Functia g(x) si f(x)')
legend({'g(x) = x^2*cos(x)','f(x) = x*sin(x^2)'},'Location','southwest');
xlabel('Axa X')
ylabel('Axa Y')

figure(6)
subplot(2,2,[2,4])
x=[-pi:0.1:4*pi];
y=x.*sin(x.^2);
y1=x.^2 .*cos(x);
plot(x,y,'--',x,y1,'-o');
grid on
title('Functia g(x) si f(x)')
legend({'g(x) = x^2*cos(x)','f(x) = x*sin(x^2)'},'Location','southwest');
xlabel('Axa X')
ylabel('Axa Y')

subplot(2,2,1)
x=[-pi:0.1:4*pi];
y1=x.^2 .*cos(x);
plot(x,y1,'-o','Color','r');
legend({'g(x) = ax^2*cos(x)'},'Location','southwest');
grid on;
title('Functia g(x)')
xlabel('Axa X')
ylabel('Axa Y')

subplot(2,2,3)
x=[-pi:0.1:4*pi];
y=x.*sin(x.^2);
plot(x,y,'--','Color','b');
legend({'f(x) = x*sin(x^2)'},'Location','southwest');
grid on;
title('Functia f(x)')
xlabel('Axa X')
ylabel('Axa Y')

figure(7)
subplot(2,2,[1,2])
x=[-pi:0.1:4*pi];
y=x.*sin(x.^2);
y1=x.^2 .*cos(x);
plot(x,y,'--',x,y1,'-o');
grid on
title('Functia g(x) si f(x)')
legend({'g(x) = x^2*cos(x)','f(x) = x*sin(x^2)'},'Location','southwest');
xlabel('Axa X')
ylabel('Axa Y')

subplot(2,2,3)
x=[-pi:0.1:4*pi];
y1=x.^2 .*cos(x);
plot(x,y1,'-o','Color','r');
legend({'g(x) = x^2*cos(x)'},'Location','southwest');
grid on;
title('Functia g(x)')
xlabel('Axa X')
ylabel('Axa Y')

subplot(2,2,4)
x=[-pi:0.1:4*pi];
y=x.*sin(x.^2);
plot(x,y,'--','Color','b');
legend({'f(x) = x*sin(x^2)'},'Location','southwest');
grid on;
title('Functia f(x)')
xlabel('Axa X')
ylabel('Axa Y')



% ex 3
figure(8)
x = [-pi:0.1:pi];
y = [-1:0.1:1];
[X, Y] = meshgrid(x, y);
z = 2 .*X .*sin(X .*Y) .*log(Y + 2);
mesh(X,Y,z)
legend({'z(x,y)= 2xsin(xy)ln(y+2)'},'Location','southwest');
grid on;
title('Functia z(x,y)')
xlabel('Axa X')
ylabel('Axa Y')
zlabel('Axa Z')

figure(9)
z = 2 .*X .*sin(X .*Y) .*log(Y + 2);
surf(X,Y,z)
legend({'z(x,y)= 2xsin(xy)ln(y+2)'},'Location','southwest');
grid on;
title('Functia z(x,y)')
xlabel('Axa X')
ylabel('Axa Y')
zlabel('Axa Z')

figure(10)
z = 2 .*X .*sin(X .*Y) .*log(Y + 2);
surf(X, Y, z);
legend({'z(x,y)= 2xsin(xy)ln(y+2)'},'Location','southwest');
grid on;
title('Functia z(x,y)')
xlabel('Axa X')
ylabel('Axa Y')
zlabel('Axa Z')


figure(11)
z = 2 .*X .*sin(X .*Y) .*log(Y + 2);
surf(X, Y, z);
legend({'z(x,y)= 2xsin(xy)ln(y+2)'},'Location','southwest');
grid on;
title('Functia z(x,y)')
xlabel('Axa X')
ylabel('Axa Y')
zlabel('Axa Z')


figure(12)
z = 2 .*X .*sin(X .*Y) .*log(Y + 2);
contour(X,Y,z)
legend({'z(x,y)= 2xsin(xy)ln(y+2)'},'Location','southwest');
grid on;
title('Functia z(x,y)')
xlabel('Axa X')
ylabel('Axa Y')
zlabel('Axa Z')

figure(13)
z = 2 .*X .*sin(X .*Y) .*log(Y + 2);
contourf(X,Y,z)
legend({'z(x,y)= 2xsin(xy)ln(y+2)'},'Location','southwest');
grid on;
title('Functia z(x,y)')
xlabel('Axa X')
ylabel('Axa Y')
zlabel('Axa Z')

figure(14)
z = 2 .*X .*sin(X .*Y) .*log(Y + 2);
contour3(X,Y,z)
legend({'z(x,y)= 2xsin(xy)ln(y+2)'},'Location','southwest');
grid on;
title('Functia z(x,y)')
xlabel('Axa X')
ylabel('Axa Y')
zlabel('Axa Z')



