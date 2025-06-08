clc; clear all; close all
[xx,yy] = meshgrid(0:0.02:4);
objective = xx + yy;

% linear conditions
cond1 = xx + 2*yy -4 <= 0;
cond2 = 2*xx + yy -4 <= 0;

% boundaries
Cp1 = 4 - 2*xx(1,:);
Cp2 = 2 - xx(1,:)/2

objective(~cond1)=NaN;
objective(~cond2)=NaN;

contour(xx,yy,objective,[0:0.2:3],'ShowText','on');
hold on

plot(xx(1,:),Cp1,'b')
plot(xx(1,:),Cp2,'b')
axis([0 2.5 0 2.5])
xlabel('x'); ylabel('y')
daspect([1 1 1])
colorbar
