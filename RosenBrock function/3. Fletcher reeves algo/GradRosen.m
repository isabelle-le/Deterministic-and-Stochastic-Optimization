function[vec]= GradRosen(r)
vec(1) = 4 * r(1) * (r(1)^2 - r(2)) + 2 * (r(1)-1);
vec(2) = 2 * ( r(2) - r(1)^2 );
end

%% ou  vec = [ 4 * r(1) * (r(1)^2 - r(2)) + 2 * (r(1)-1, 2 * ( r(2) - r(1)^2 ) ];
