function[hes]= HessHimmelblow(r)
hes(1,1) = 12*r(1)^2 + 4*r(2) -42;
hes(1,2) = 4*r(1) + 4*r(2);
hes(2,1) = 4*r(1) + 4*r(2);
hes(2,2) = 12*r(2)^2 +4* r(1) -26;
end
%%[r,x,y,k]= OPTIMAL_PAS_OPTIMAL_FREE(0.001,[-2,2], @GradHimmelblow, @HessHimmelblow)