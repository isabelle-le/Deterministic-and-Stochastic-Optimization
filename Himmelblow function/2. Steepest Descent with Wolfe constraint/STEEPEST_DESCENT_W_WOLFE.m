function[r,x,y,k]= STEEPEST_DESCENT_W_WOLFE(epsilon,r0,MyGrad,MyFunction)
k=1;
r=r0;
x(1)=r(1);
y(1)=r(2);
while sqrt(MyGrad(r)*MyGrad(r)')>epsilon
    t=Wolfe(r0,MyGrad,MyFunction);
    r=r-t*MyGrad(r);
    k=k+1;
    x(k)=r(1);
    y(k)=r(2);
    disp(k);
    disp(r);
end;
end
%%STEEPEST_DESCENT_W_WOLFE(0.001,[-5,10],@GradHimmelblow,@Himmeleblow);
%% at epsilon = 0.001 and starting point is (-5,10)
%% minimun point is (-3.7793, -3.2832) with k = number of interation = 34

%% at epsilon = 0.001 and starting point is (-3,3)
%% minimun point is (-2.8051, 3.1313) with k = number of interation = 8

%% at epsilon = 0.001 and starting point is (5,10)
%% minimun point is (3.0000, 2.0000) with k = number of interation = 93

%% at epsilon = 0.001 and starting point is (0,0)
%% minimun point is (inf, -1.8047) with k = number of interation = 9

