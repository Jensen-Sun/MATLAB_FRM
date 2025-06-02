clc; close all; clear all
y = 0:0.01:4;
z = y/4.*cos(12*y) + 2;
x = y/4.*sin(12*y) + 2;

h = figure(1)
plot3(x,y,z,'LineWidth',2); hold all
xlim([0,max(y)]); ylim([0,max(y)]); zlim([0,max(y)])
xlabel('x'); ylabel('y'); zlabel('z')

hAxis = gca;
hAxis.XRuler.FirstCrossoverValue = 0;
hAxis.YRuler.FirstCrossoverValue = 0;
hAxis.ZRuler.FirstCrossoverValue = 0;
hAxis.ZRuler.SecondCrossoverValue = 0;
hAxis.XRuler.SecondCrossoverValue = 0;
hAxis.YRuler.SecondCrossoverValue = 0;