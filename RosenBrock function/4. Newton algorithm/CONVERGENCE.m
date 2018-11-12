%%it is visualization
function[] = CONVERGENCE(epsilon, r0)
[~,x,y,~]=NEWTON(0.001,[10,2],@GradRosen, @HessRosen);
plot(x,y,'-o');
xlabel('xn');
ylabel('yn');
hold on;
[X,Y]=meshgrid(-10:0.1:12,-100:0.05:110);
contour(X,Y,(X.^2 - Y).^2 + (X-1).^2, [0,0.1,0.5,1,5,10,40,60,80,100,250,500,1000,1500,2500,3600,4700,5800,6500]);
text(20,5,'minimun');
text(7,-5,'start point(10,2)');
title ('Convergent of algr NEWTON for ROSENBROCK');
set(gca, 'Color','c');
set(gcf, 'Color','w');
[a,b]=meshgrid(-10:0.1:10,-100:0.05:100);
c = (a.^2 + b).^2 + (a-1).^2;
figure;
mesh(a,b,c);
end
