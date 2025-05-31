clc; clear all; close all
x = [-10:0.1:10]; y=x;
[xx, yy] = meshgrid(x,y);
zz1 = xx.^2 + yy.^2;
zz2 = xx + 2*yy;

figure(1)
subplot(2,3,1)
contour(xx,yy,zz1,[25,50,100],'ShowText','on')
caxis([min(zz2(:)) max(zz1(:))])
% caxis defines the color levels of the contours

subplot(2,3,4)
contour(xx,yy,zz2,[-30:10:30],'ShowText','on')
caxis([min(zz2(:)) max(zz1(:))])

subplot(2,3,[2,3,5,6])
contour(xx,yy,zz1,[25,50,100]); hold on
contour(xx,yy,zz2,[-30:10:30]); hold on
[~,c1] = contour(xx,yy,zz1,[50 50],'ShowText','on'); hold on
[~,c2] = contour(xx,yy,zz2,[0 0],'ShowText','on'); hold on
c1.LineWidth = 3; c2.LineWidth = 3;
caxis([min(zz2(:)) max(zz1(:))])
colorbar; xlabel('x'); ylabel('y')

figure(2)
[M1,c1] = contour(xx,yy,zz1,[50 50],'ShowText','on'); hold on
[M2,c2] = contour(xx,yy,zz2,[0 0],'ShowText','on'); hold on
x1 = M1(1,2:end); y1 = M1(2,2:end);
x2 = M2(1,2:end); y2 = M2(2,2:end);
[xi,yi] = polyxpoly(x1,y1,x2,y2);
plot(xi,yi,'xk','MarkerSize',20)
c1.LineWidth = 3; c2.LineWidth = 3;
caxis([min(zz2(:)) max(zz1(:))])
colorbar; xlabel('x'); ylabel('y')