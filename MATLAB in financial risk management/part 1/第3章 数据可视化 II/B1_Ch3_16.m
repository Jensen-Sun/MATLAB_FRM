clc; close all; clear all
x = -2*pi:0.01:2*pi;
figure(1)
subplot(2,2,1)
plot(x,sin(x));
hAxis = gca;
hAxis.YAxisLocation = 'left';
hAxis.XAxisLocation = 'bottom';
xlabel('x'); ylabel('y'); box off

subplot(2,2,2)
plot(x,sin(x));
hAxis = gca;
hAxis.YAxisLocation = 'right';
hAxis.XAxisLocation = 'top';
xlabel('x'); ylabel('y'); box off

subplot(2,2,3)
plot(x,sin(x));
hAxis = gca;
hAxis.XAxisLocation = 'origin';
hAxis.YAxisLocation = 'origin';
xlabel('x'); ylabel('y'); box off

subplot(2,2,4)
plot(x,sin(x));
hAxis = gca;
hAxis.YRuler.FirstCrossoverValue = 2;
hAxis.XRuler.FirstCrossoverValue = -0.5;
xlabel('x'); ylabel('y'); box off