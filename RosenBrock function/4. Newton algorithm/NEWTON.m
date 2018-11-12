function[rmin,x,y,k] = NEWTON(epsilon, r0, MyGrad, MyHess)
k = 1;
r =r0;
x(1) = r(1);
y(1) = r(2);
while sqrt(MyGrad(r) * MyGrad(r)') > epsilon
    d = - MyGrad(r)*(MyHess(r))^(-1);
    r = r + d;
    k = k + 1;
    x(k) = r(1);
    y(k) = r(2);
   % k = k + 1;
end
disp (x);
disp (y);
rmin = r;
disp (k);
end
%% NEWTON(0.001,[10,2],@GradRosen, @HessRosen)
%% at epsilon = 0.001 and starting point is (10,2)
%% minimun point is (1.000, 1.000) with k = number of interation = 6

%% at epsilon = 0.001 and starting point is (1,-1)
%% minimun point is (1, 1) with k = number of interation = 2