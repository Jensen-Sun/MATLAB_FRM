clc; clear all; close all
x = 0:0.01:2*pi
sin_y = sin(x);
loc_min = find(sin_y == min(sin_y));
loc_max = find(sin_y == max(sin_y));
figure(1)
y_handle = plot(x,sin_y)

y_handle.MarkerIndices = [loc_min, loc_max];
y_handle.MarkerFaceColor = 'red';
y_handle.MarkerEdgeColor = 'k';
y_handle.MarkerSize = 10;
y_handle.Marker = 'p';
y_handle.LineWidth = 1;

box off
ax = gca;
ax.XAxisLocation = 'origin';
xlabel('x'); ylabel('y')