clc; clear all; close all
x = [0:10]; % m/s
y = [7 5 8 10 4 6 9 3 11 5 3];

ax1 = axes('Position', [.1 .1 .8 1e-12]);
set(ax1,'Units','normalized');
set(ax1,'Color','none');
set(ax1,'xlim',[0 max(x)*3.6]);
set(ax1,'Xtick',0:6:36)
xlabel(ax1,'Speed (km/h)')

ax2 = axes('Position',[.1 .2 .8 .7]);
set(ax2,'Units','normalized');

figure(1)
stem(ax2,x,y)
xlabel(ax2,'Speed (m/s)')
ylabel(ax2,'Results');
title(ax2,'Double x-axis plot');
set(ax2,'xlim',[0 max(x)]);