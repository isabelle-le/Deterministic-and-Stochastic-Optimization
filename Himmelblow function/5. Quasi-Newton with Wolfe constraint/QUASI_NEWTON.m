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


%%QUASI_NEWTON(0.001,[-2,2],@GradHimmelblow,@Himmeleblow)
%% at epsilon = 0.001 and starting point is (-2,2)
%% minimun point is (-2.851, 3.1313) with k = number of interation = 336

%% at epsilon = 0.001 and starting point is (-3,-3)
%% minimun point is (-3.7793, -3.2832) with k = number of interation = 644

%% at epsilon = 0.001 and starting point is (2,3)
%% minimun point is (3.000, 2.000) with k = number of interation = 649

%% at epsilon = 0.001 and starting point is (1,-1)
%% minimun point is (3.5844, -1.8484) with k = number of interation = 183