function[tWolfe] = Wolfe(r0,MyGrad,MyFunction)
teta = [1,0;0,1];
t = 1;
tMin = 0;
tMax = 0;
m1 = 0.1;
m2 = 0.9;
N = 1000;
r = r0;

for k = 1:N
    v = r-t*MyGrad(r)*teta';
    d = -MyGrad(r)*teta';
    if( MyFunction(v) <= (MyFunction(r)+m1*t*MyGrad(r)*d') ) && ((MyGrad(v)*d') >= (m2*MyGrad(r)*d'))
        tWolfe = t;
    break;
    else
        if( MyFunction(v) > MyFunction(r)+m1*t*MyGrad(r)*d')
            tMax = t;
        elseif ( MyFunction(v) <= (MyFunction(r)+m1*t*MyGrad(r)*d')) && ((MyGrad(v)*d') < (m2*MyGrad(r)*d'))
            tMin = t;
        end
    end
            if (tMax == 0)
                t = 2 * tMin;
            elseif (tMax>0)
                t=(tMin + tMax)/2;
            end
             
end
end

