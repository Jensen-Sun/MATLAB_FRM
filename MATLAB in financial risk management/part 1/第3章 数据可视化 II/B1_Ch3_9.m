tt = 0:0.2:4;
[yy, zz] = meshgrid(tt);
xx1 = 2 + 0*yy + 0*zz;
xx2 = yy + 0*zz;
xx_diff = xx1 - xx2;

C_X = contour(yy, zz, xx_diff, [0 0]);
y_intersect = C_X(1,2:end);
z_intersect = C_X(2,2:end);

x_intersect = interp2(yy,zz,xx1,y_intersect,z_intersect);
figure(1)
mesh(xx1,yy,zz); hold on
mesh(xx2,yy,zz); hold on

line(x_intersect,y_intersect,z_intersect,'Color','k','LineWidth',3)
xlabel('x'); ylabel('y'); zlabel('z')
box off; grid off