%% conic sections
clc; clear all; close all
tt = -2:0.2:2; [xx,yy] = meshgrid(tt);
zz0 = sqrt(xx.^2 + yy.^2);
zz1 = 1.5 + 0*xx;
zz2 = xx/3 + yy/3 + 1;
zz3 = xx/2 + yy/2 + 2;
zz4 = xx + yy + 1;

figure(1)
subplot(2,2,1)
intersect_plot(xx,yy,zz0,zz1)

subplot(2,2,2)
intersect_plot(xx,yy,zz0,zz2)

subplot(2,2,3)
intersect_plot(xx,yy,zz0,zz3)

subplot(2,2,4)
intersect_plot(xx,yy,zz0,zz4)

function intersect_plot(xx,yy,zz_A,zz_B)
mesh(xx,yy,zz_A); hold on
mesh(xx,yy,zz_B)
z_diff = zz_A - zz_B;
C_Z = contours(xx,yy,z_diff,[0 0]);
x_intersect = C_Z(1,2:end);
y_intersect = C_Z(2,2:end);
z_intersect = interp2(xx,yy,zz_B,x_intersect,y_intersect);
line(x_intersect,y_intersect,z_intersect,'Color','k','LineWidth',1.5)
xlabel('x'); ylabel('y'); zlabel('z')
zlim([0 4]); box off; grid off
end