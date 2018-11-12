function[tWolfe]=Wolfe(r0,MyGrad,MyFunction)
t=1;
tmin=0;
tmax=0;
m1=0.1;
m2=0.8;
N=1000;
r=r0;

for k=1:N
    v=r-t*MyGrad(r);
    if (MyFunction(v)<=MyFunction(r)-m1*t*MyGrad(r)*MyGrad(r)') && ((-MyGrad(v)*MyGrad(r)')>=(-m2*MyGrad(r)*MyGrad(r)'))
        t(k)=t;
        disp(t(k));
    break;
    else
        if (MyFunction(v)>MyFunction(r)-m1*t*MyGrad(r)*MyGrad(r)')
            tmax=t;
        elseif (MyFunction(v) <= MyFunction(r)-m1*t*MyGrad(r)*MyGrad(r)') && (-MyGrad(v)*MyGrad(r)'<(-m2*MyGrad(r)*MyGrad(r)'))
            tmin=t;
        end
    end
            if (tmax == 0)
                t=2*tmin;
            elseif (tmax>0)
                t=(tmin+tmax)/2;
            end
              tWolfe=t;  

end
end
