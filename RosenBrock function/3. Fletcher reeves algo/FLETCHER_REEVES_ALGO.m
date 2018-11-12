function[rmin,x,y,k]= FLETCHER_REEVES_ALGO(epsilon,r0,MyGrad,MyHess)
k = 1;
r = r0;
x(1) = r(1);
y(2) = r(2);
  Direction = -MyGrad(r0);
  
while sqrt(MyGrad(r)*MyGrad(r)') > epsilon
    k = k+1;
    t =( MyGrad(r)*MyGrad(r)') / ( MyGrad(r)*MyHess(r)*MyGrad(r)' );
    rOld = r ; 
    r = r + t*Direction;
    x(k)=r(1);
    y(k)=r(2);
    DirectionOld = Direction ;
    Beta = (MyGrad(r)*MyGrad(r)') / (MyGrad(rOld)*MyGrad(rOld)');
    Direction = -MyGrad(r) + Beta*DirectionOld;
    
    if (Direction*MyGrad(r)') >= 0
        Direction = -MyGrad(r);
    end
    
end
    rmin = r;
    disp(r);
    disp(k);
end
%% FLETCHER_REEVES_ALGO(0.001,[10,2],@GradRosen,@HessRosen)
%% at epsilon = 0.001 and starting point is (10,2)
%% minimun point is (0.9991, 0.9976) with k = number of interation = 27

%% at epsilon = 0.001 and starting point is (1,-1)
%% minimun point is (1.0008, 1.0020) with k = number of interation = 27
