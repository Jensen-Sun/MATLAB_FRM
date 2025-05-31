[X,Y] = meshgrid(-2:.1:2); Z = X.*exp(-X.^2 - Y.^2);
[xx,yy] = meshgrid(-2:.4:2); zz = xx.*exp(-xx.^2 - yy.^2);

[DX,DY] = gradient(zz,.2,.2);

[U,V,W] = surfnorm(xx,yy,zz);

figure(1)
subplot(2,1,1)
contour(X,Y,Z); hold on
quiver(xx,yy,DX,DY); hold off
xlabel('x'); ylabel('y'); zlabel('z')

subplot(2,1,2)
mesh(X,Y,Z); hold on
quiver3(xx,yy,zz,U,V,W,0.5)
xlabel('x'); ylabel('y');