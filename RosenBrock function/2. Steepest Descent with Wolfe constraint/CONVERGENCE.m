function[] = CONVERGENCE(epsilon, r0)
[~,x,y,~]= STEEPEST_DESCENT_W_WOLFE(0.001,[2,2],@GradRosen,@Rosen);
plot(x,y,'-o');
xlabel('xn');
ylabel('yn');
hold on;
[X,Y]=meshgrid(-4:0.01:4,-4:0.01:4);
contour(X,Y,(X.^2 - Y).^2 + (X-1).^2, [0,0.1,0.5,1,2,5,10,15,20,25,30,35,40,45]);
text(1.1,1,'minimun');
text(7,1.8,'start point(10,2)');
title ('Convergent of algr STEEPEST DESCENT W.WOLFE for ROSENBROCK');
set(gca, 'Color','c');
set(gcf, 'Color','w');
[a,b]=meshgrid(-3:0.01:3,-1:0.01:5);
c = (a.^2 + b).^2 + (a-1).^2;
figure;
mesh(a,b,c);
end