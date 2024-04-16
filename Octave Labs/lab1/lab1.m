close all
clc
clear

% ex 2
x=-1.75*10^-3
y=3.1*pi

Q=((abs(x)*(1+2*x^2))/(100*x+cot(y)))^2.1 + (100*x+cot(y)+sin(y))/(x^2*(1+2*x^2))
F=acot(((2*x-sin(y))^(1/5))/((abs(x-log(y)))^(1/2))) + (abs(x)*(abs(x-log(y)))^(1/2))/((2*x-sin(y))^(1/5))

a=1+2*x^2
b=100*x+cot(y)
c=abs(x)
d=(2*x-sin(y))^(1/5)
e=(abs(x-log(y)))^(1/2)

Q1=((c*a)/b)^2.1 + (b+sin(y))/(x^2*a)
F1=acot(d/e) + (c*e)/d

format long;Q, F
format rat;Q, F


% ex 3
startIndex=-1
endIndex=3
n=8
step=(endIndex-startIndex)/(n-1)
x=[-1:step:3]
f= @(x) exp(-x).*cos(x.^2).*(x.^2+1)
fprintf('y=%f\n',f(x))


disp('Whos:')
whos

