%%it is visualization
function[] = CONVENGENCE_OF_HIMMELBLOW(epsilon, r0)
[~,x,y,~]= STEEPEST_DESCENT_W_WOLFE(0.001,[-5,10],@GradHimmelblow,@Himmeleblow);
plot(x,y,'-o');
xlabel('xn');
ylabel('yn');
hold on;
[X,Y]=meshgrid(-6:0.01:5,-6:0.01:5);
contour(X,Y,(X.^2 + Y -11).^2 + (X + Y.^2 - 7).^2, [0,0.1,0.5,1,2,5,10,15,20,25,30,35,40,45,50,55,60,70,80,90,100,200,300]);
text(-4,-4,'minimun');
text(-4,9.5,'start point(-5,10)');
title ('Convergent of algr STEEPEST DESCENT W.WOLFE for HIMMELBLOW');
set(gca, 'Color','c');
set(gcf, 'Color','w');
[a,b]=meshgrid(-5:0.01:5,-5:0.01:5);
c = (a.^2 + b - 11).^2 + (a + b.^2 - 7).^2;
figure;
mesh(a,b,c);
colorbar
end
