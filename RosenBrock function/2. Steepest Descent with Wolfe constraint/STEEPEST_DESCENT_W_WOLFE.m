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
%%STEEPEST_DESCENT_W_WOLFE(0.001,[10,2],@GradRosen,@Rosen);
%% at epsilon = 0.001 and starting point is (10,2)
%% minimun point is (0.9989, 1.9973) with k = number of interation = 4448

%% at epsilon = 0.001 and starting point is (1,-1)
%% minimun point is (0.9990, 0.9975) with k = number of interation = 132
