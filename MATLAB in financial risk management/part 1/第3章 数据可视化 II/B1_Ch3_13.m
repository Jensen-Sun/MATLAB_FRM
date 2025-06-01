clc; close all; clear all
x = 0:0.1:8;
y = x.*sin(x);

xconf = [x fliplr(x)];
yconf = [y+1 fliplr(y)-1];

figure(1)
fill_handle = fill(xconf,yconf,'red')
fill_handle.FaceColor = [1,0.8,0.8];
fill_handle.EdgeColor = 'none';
hold on

y_handle = plot(x,y,'-bo')
y_handle.MarkerSize = 5;
y_handle.MarkerIndices = 1:5:length(y);
y_handle.LineWidth = 1.5;
hold off
xlabel('x'); ylabel('y'); box off
ax = gca;
ax.XAxisLocation = 'origin';