[xx,yy] = meshgrid(-5:0.5:5);
figure(1)
subplot(2,2,1)
zz = -(xx.^2 + yy.^2);
mesh(xx,yy,zz)
xlabel('x'); ylabel('y'); zlabel('z')
grid off; box off

subplot(2,2,2)
zz = sqrt(xx.^2 + yy.^2);
mesh(xx,yy,zz)
xlabel('x'); ylabel('y'); zlabel('z')
grid off; box off

subplot(2,2,3)
zz = xx.*yy;
mesh(xx,yy,zz)
xlabel('x'); ylabel('y'); zlabel('z')
grid off; box off

subplot(2,2,4)
zz = sin(xx).*cos(yy/2)+2;
mesh(xx,yy,zz)
xlabel('x'); ylabel('y'); zlabel('z')
zlim([0,4])
grid off; box off