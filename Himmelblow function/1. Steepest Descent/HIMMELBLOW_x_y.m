function[r,x,y,k]=HIMMELBLOW_x_y(epsilon, r0)
k = 1;
r = r0;
x(1) = r(1);
y(1) = r(2);
while sqrt(GradHimmelblow(r)*GradHimmelblow(r)') > epsilon
t = GradHimmelblow(r)*GradHimmelblow(r)' / (GradHimmelblow(r)* HessHimmelblow(r)*GradHimmelblow(r)');
r = r - t*GradHimmelblow(r);
k = k + 1;
x(k) = r(1);
y(k) = r(2);
end
end
%% [r,x,y,k]=HIMMELBLOW_x_y(0.001,[-2,2])
%% at epsilon = 0.001 and starting point is (-2,2)
%% minimun point is (-2.8051, 3.1313) with k = number of interation = 8

%% at epsilon = 0.001 and starting point is (-3,3)
%% minimun point is (-2.8051, 3.1313) with k = number of interation = 4

%% at epsilon = 0.001 and starting point is (2,3)
%% minimun point is (3.000, 2.000) with k = number of interation = 14

%% at epsilon = 0.001 and starting point is (1,-1)
%% minimun point is (-0.2709, 0.9231) with k = number of interation = 12