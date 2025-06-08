clc; close all; clear all
xp = [1,-1,-1,2,-1,2]';
yp = [1,3,-1,-2,2,2]';
zp = [2,2,6,20,-3,12]';

F = [ones(size(xp)), yp, xp, yp.^2, xp.^2, xp.*yp];
p = regress(zp, F)

[x_grid, y_grid] = meshgrid([-4:0.5:4],[-4:0.5:4]);
z_grid = p(1) + p(2)*y_grid + p(3)*x_grid + ...
    p(4)*y_grid.^2 + p(5)*x_grid.^2 + ...
    p(6)*y_grid.*x_grid;

figure(1)
plot3(xp, yp, zp, 'ok')
hold on
mesh(x_grid,y_grid,z_grid)
xlabel('x'); ylabel('y'); zlabel('z');
grid on