[xx,yy] = meshgrid(-5:0.5:5);
figure(1)
zz = -(xx.^2 + yy.^2);
subplot(2,2,1)
meshc(xx,yy,zz)
xlabel('x'); ylabel('y'); zlabel('z')
grid off; box off

subplot(2,2,2)
contour3(xx,yy,zz,15)
xlabel('x'); ylabel('y'); zlabel('z')
grid off; box off

subplot(2,2,3)
mesh(xx,yy,zz,'MeshStyle','column')
xlabel('x'); ylabel('y'); zlabel('z')
grid off; box off

subplot(2,2,4)
mesh(xx,yy,zz,'MeshStyle','row')
xlabel('x'); ylabel('y'); zlabel('z')
grid off; box off
