clc; close all; clear all
x = linspace(-2*pi, 2*pi, 100);
y = linspace(0, 4*pi, 100);
[X,Y] = meshgrid(x,y); 
Z = sin(X/2)+cos(Y*2);

figure(1);
subplot(3,3,[2:3 5:6]); %top right square
contour(X,Y,Z);
xlim([min(x),max(x)]);
ylim([min(y),max(y)]);
xlabel('x'); ylabel('y');

subplot(3,3, [1 4]); %top left
plot(y, cos(y*2));
view(90, -90);
xlim([min(y),max(y)]);
box off; 
set(gca, 'XAxisLocation', 'origin');

subplot(3,3,[8 9]); 
plot(x,sin(x/2)); xlim([min(x), max(x)]);
box off;
set(gca, 'XAxisLocation', 'origin');