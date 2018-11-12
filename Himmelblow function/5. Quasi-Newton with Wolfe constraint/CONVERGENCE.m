%%it is visualization
function[] = CONVERGENCE(epsilon, r0)
[~,x,y,~]= QUASI_NEWTON(0.001,[-2,2],@GradHimmelblow,@Himmeleblow);
plot(x,y,'-o');
xlabel('xn');
ylabel('yn');
hold on;
[X,Y]=meshgrid(-6.1:0.01:6.1,-6.1:0.01:6.1);
contour(X,Y,(X.^2 + Y -11).^2 + (X + Y.^2 - 7).^2, [0,0.1,0.5,1,2,5,10,15,20,25,30,35,40,45,50,55,60,70,80,90,100,200,300]);
text(-3,4,'minimun');
text(-2.8,1.5,'start point(-2,2)');
title ('Convergent of algr QUASI NEWTON W WOLFE for HIMMELBLOW');
set(gca, 'Color','c');
set(gcf, 'Color','w');
[a,b]=meshgrid(-5.6:0.01:5.6,-5.6:0.01:5.6);
c = (a.^2 + b - 11).^2 + (a + b.^2 - 7).^2;
figure;
mesh(a,b,c);
colorbar
end
