clc; clear all; close all
[xxx,yyy,zzz] = meshgrid(-2:.2:2);
[xx,yy] = meshgrid(-2:.2:2);
vvv = sin(xxx-yyy+2*zzz).*cos(2*xxx+yyy-zzz);
xslice = [];
yslice = [];
zslice = -2:2:2;
figure(1)
subplot(2,2,1)
contourslice(xxx,yyy,zzz,vvv,xslice,yslice,zslice,10)
view(3)
grid off;
box off;
xlabel('x'); ylabel('y'); zlabel('z')

Zs = zslice;
for i = 1:length(Zs)

    subplot(2,2,i+1)
    z = Zs(i);
    zz = z*ones(size(xx));
    vv = sin(xx-yy+2*zz).*cos(2*xx+yy-zz);
    contour(xx,yy,vv)
    xlabel('x'); ylabel('y');
    title(['z =', num2str(z)])

end