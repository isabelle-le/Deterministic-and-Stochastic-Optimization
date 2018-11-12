function[r,x,y,k] = QUASI_NEWTON(epsilon,r0,MyGrad,MyFunction)
k = 1;
r = r0;
x(1) = r(1);
y(1) = r(2);
teta = [1,0;0,1];
while  sqrt(MyGrad(r)*MyGrad(r)')>epsilon
    k = k+1;
    rold = r;
    d = -MyGrad(r)*teta';
    tWolfe = Wolfe(r0,MyGrad,MyFunction);
    r = r + tWolfe*d;
    x(k) = r(1);
    y(k) = r(2); 
    delta = r-rold;
    sigma = MyGrad(r)-MyGrad(rold);
    teta = teta+(delta'*delta)/(delta*sigma')-(teta*sigma'*sigma*teta)/(sigma*teta*sigma');
    
end
    rmin = r;
    disp(rmin);
    disp(k); 
end


%%QUASI_NEWTON(0.001,[10,2],@GradRosen,@Rosen)
%% at epsilon = 0.001 and starting point is (10,2)
%% minimun point is (0.9993, 0.9986) with k = number of interation = 3441

%% at epsilon = 0.001 and starting point is (0,0)
%% minimun point is (0.9990, 0.9977) with k = number of interation = 26