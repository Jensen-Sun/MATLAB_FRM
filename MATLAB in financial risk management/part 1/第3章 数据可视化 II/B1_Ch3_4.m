x = linspace(-2*pi, 2*pi, 20);
y = linspace(0, 3, 20);
[X, Y] = meshgrid(x,y);
Z = sin(X).*exp(Y);

figure(1)
mesh(X,Y,Z)
% standard mesh
xlabel('x');
ylabel('y');
zlabel('z');
xlim([min(x),max(x)]);
ylim([min(y),max(y)])

figure(2)
mesh(X,Y,Z,'MeshStyle','column')
% mesh: column only
xlabel('x');
ylabel('y');
zlabel('z');
xlim([min(x),max(x)]);
ylim([min(y),max(y)])

figure(3)
mesh(X,Y,Z,'MeshStyle','row')
% mesh: row only
xlabel('x');
ylabel('y');
zlabel('z');
xlim([min(x),max(x)]);
ylim([min(y),max(y)])