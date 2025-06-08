%% 1D interpolation
clc; clear all; close all
x = 0:pi/4:2*pi;
v = sin(x);
xq = 0:pi/16:2*pi;

figure(1)
subplot(1,2,1)
vq1 = interp1(x,v,xq);
plot(x,v,'x',xq,vq1,':.');
xlim([0 2*pi]);
title('(Default) Linear Interpolation');
set(gca, 'XAxisLocation', 'origin')

subplot(1,2,2)
vq2 = interp1(x,v,xq,'spline');
plot(x,v,'x',xq,vq2,':.');
xlim([0 2*pi]);
title('Spline Interpolation');
set(gca, 'XAxisLocation', 'origin')