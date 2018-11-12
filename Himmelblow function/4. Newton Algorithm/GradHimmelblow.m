function[vec]= GradHimmelblow(r)
vec(1) = 2 *(r(1)^2 + r(2) - 11)*2*r(1) + 2*(r(1)+ r(2)^2 - 7 );
vec(2) = 2 *(r(1)^2 + r(2) -11) + 2*(r(1) + r(2)^2 -7)*2*r(2) ;
end