function[r,x,y,k]= ROSENBROCK_x_y (epsilon, r0)
k = 1;
r = r0;
x(1) = r(1);
y(1) = r(2);
while sqrt(GradRosen(r)*GradRosen(r)') > epsilon
t = GradRosen(r)*GradRosen(r)' / (GradRosen(r)* HessRosen(r)*GradRosen(r)');
r = r - t*GradRosen(r);
k = k + 1;
x(k) = r(1);
y(k) = r(2);
end
end
%% [r,x,y,k]= ROSENBROCK_x_y (0.001,[10,2])
%% at epsilon = 0.001 and starting point is (10,2)
%% minimun point is (1.0009, 1.0023) with k = number of interation = 101

%% at epsilon = 0.001 and starting point is (1,-1)
%% minimun point is (0.9990, 0.9975) with k = number of interation = 27