%% 3D surface, mesh, contours, etc.
x = linspace(-2*pi, 2*pi, 40);
y = linspace(0, 4*pi, 40)
[X, Y] = meshgrid(x,y);
Z = sin(X) + cos(Y);

i = 1
figure(i)
surf(X,Y,Z)
% surf(X,Y,Z) creates a three-dimensional surface plot
xlabel('x');
ylabel('y');
zlabel('sin(x) + sin(y)')

i = i+1;
figure(i)
mesh(X,Y,Z)
% mesh(X,Y,Z) draws a wireframe mesh with color determined by Z
xlabel('x');
ylabel('y');
zlabel('sin(x) + sin(y)')

i = i+1;
figure(i)
contour(X,Y,Z,'ShowText','on')
xlabel('x');
ylabel('y');
xlim([-2*pi,2*pi]);
ylim([0,4*pi])

i = i+1;
figure(i)
contourf(X,Y,Z,'ShowText','on')
xlabel('x');
ylabel('y');
xlim([-2*pi,2*pi]);
ylim([0,4*pi])

i = i+1;
figure(i)
meshc(X,Y,Z)
xlabel('x');
ylabel('y');
zlabel('sin(x) + sin(y)')

i = i+1;
figure(i)
meshz(X,Y,Z)
xlabel('x');
ylabel('y');
zlabel('sin(x) + sin(y)')
xlim([-2*pi,2*pi]);
ylim([0,4*pi])

i = i+1;
figure(i)
contour3(X,Y,Z,20)
xlabel('x');
ylabel('y');
zlabel('sin(x) + sin(y)')
xlim([-2*pi,2*pi]);
ylim([0,4*pi])