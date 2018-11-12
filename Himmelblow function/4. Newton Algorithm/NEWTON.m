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
rmin = r;
disp (k);
end
%% NEWTON(0.001,[-2,2],@GradHimmelblow, @HessHimmelblow)
%% at epsilon = 0.001 and starting point is (-2,2)
%% minimun point is (-2.8051, 3.1313) with k = number of interation = 7

%% at epsilon = 0.001 and starting point is (-3,-3)
%% minimun point is (-3.7793, -3.2832) with k = number of interation = 5

%% at epsilon = 0.001 and starting point is (3,2)
%% minimun point is (-2.8051, 3.1313) with k = number of interation = 6

%% at epsilon = 0.001 and starting point is (-2,2)
%% minimun point is (-0.2708, -0.9230) with k = number of interation = 5