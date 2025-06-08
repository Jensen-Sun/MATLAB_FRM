x = 0:0.25:5;
y = 0:0.25:5;
[xx,yy] = meshgrid(x,y);
zz = xx + yy;

figure(1)
subplot(2,2,1)
mesh(xx,yy,zz)
xlabel('x'); ylabel('y'); zlabel('z')

zz = yy + 5;
subplot(2,2,2)
mesh(xx,yy,zz)
xlabel('x'); ylabel('y'); zlabel('z')

zz = xx + 5;
subplot(2,2,3)
mesh(xx,yy,zz)
xlabel('x'); ylabel('y'); zlabel('z')

zz = xx*0 + yy*0 + 5;
subplot(2,2,4)
mesh(xx,yy,zz)
xlabel('x'); ylabel('y'); zlabel('z')
zlim([0,10])

zz = yy + 5;
figure(2)
subplot(1,2,1)
mesh(xx,yy,zz,'MeshStyle','column')
xlabel('x'); ylabel('y'); zlabel('z')
zlim([5,10])

subplot(1,2,2)
mesh(xx,yy,zz,'MeshStyle','row')
xlabel('x'); ylabel('y'); zlabel('z')
zlim([5,10])


max_surf = max(zz(:));
min_surf = min(zz(:));
xs = [0,5]; ys = [0,5]; zs = [5,10];
[xxx,yyy,zzz] = meshgrid(xs, ys, zs);
v = zeros(size(xxx));

figure(3)
subplot(1,2,1)
mesh(xx,yy,zz); hold on
x_checked = [2,4];
for i=1:length(x_checked)
    slice(xxx,yyy,zzz,v,x_checked(i),[],[]); hold on
end

xlim([0,5]); ylim([0,5]); zlim([5,10])
xlabel('x'); ylabel('y'); zlabel('z')

subplot(1,2,2)
mesh(xx,yy,zz); hold on
y_checked = [2,4];
for i=1:length(y_checked)
    slice(xxx,yyy,zzz,v,[],y_checked(i),[]); hold on
end

xlim([0,5]); ylim([0,5]); zlim([5,10])
xlabel('x'); ylabel('y'); zlabel('z')