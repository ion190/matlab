

% Task 1
% a
t1a = quad(@fun1, 1.2, 3)

% b
t1b = quad(@fun2, 1, 4)

% Task 2
t2 = dblquad(@fun3, 0.2, 2, 0.1, 1)

% Task 3
t3 = triplequad(@fun4, 0.2, 1, 0.1, 2, 3, 3)


