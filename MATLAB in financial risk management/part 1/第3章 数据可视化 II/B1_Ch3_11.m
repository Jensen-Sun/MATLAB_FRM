x = 0:0.01:2*pi;
linear_y = x;
sq_y = x.^2;
sin_y = sin(x);
cos_y = cos(x);

figure(1);
plot(x,sin_y,'b');
hold on;
plot(x,cos_y,'r');
hold off; box off
xlabel('x'); ylabel('y')

ax = gca;
ax.TickDir = 'both';
ax.XMinorTick = 'on';
ax.YTick = -2:2;
ax.YMinorTick = 'on';
ax.XAxisLocation = 'top';
ax.YGrid = 'on';
ax.TickLength = [0.02 0.02];
ax.YLim = [-2 2];
ax.XLim = [0 2*pi];