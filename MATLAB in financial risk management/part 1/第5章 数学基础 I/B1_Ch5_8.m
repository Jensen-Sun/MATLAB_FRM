clc; clear all; close all
figure(1)
subplot(2,2,1)
tt = [0:0.1:4];
xx = tt;
yy = 2*ones(length(tt),1);
zz = 2*ones(length(tt),1);
plot3(xx,yy,zz); hold on
xlim([0,4]); ylim([0,4]); zlim([0,4]);
xlabel('x'); ylabel('y'); zlabel('z');
grid on

subplot(2,2,2)
yy = tt;
xx = 2*ones(length(tt),1);
zz = 2*ones(length(tt),1);
plot3(xx,yy,zz); hold on
xlim([0,4]); ylim([0,4]); zlim([0,4]);
xlabel('x'); ylabel('y'); zlabel('z');
grid on

subplot(2,2,3)
zz = tt;
xx = 2*ones(length(tt),1);
yy = 2*ones(length(tt),1);
plot3(xx,yy,zz); hold on
xlim([0,4]); ylim([0,4]); zlim([0,4]);
xlabel('x'); ylabel('y'); zlabel('z');
grid on

subplot(2,2,4)
xx = tt;
yy = tt;
zz = 1/2*xx + 1/2*yy;
plot3(xx,yy,zz); hold on
plot3(xx,yy,zeros(length(tt),1)); hold on
plot3(xx,zeros(length(tt),1),zz); hold on
plot3(zeros(length(tt),1),yy,zz); hold on
xlim([0,4]); ylim([0,4]); zlim([0,4]);
xlabel('x'); ylabel('y'); zlabel('z');
grid on