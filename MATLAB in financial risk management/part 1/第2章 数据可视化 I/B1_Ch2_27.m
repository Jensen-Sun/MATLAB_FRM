[x,y] = meshgrid(0:0.2:2, 0:0.2:2);
u = cos(x).*y;
v = sin(x).*y;

figure(1)
quiver(x,y,u,v)
xlabel('x'); ylabel('y')