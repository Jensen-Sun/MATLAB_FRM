num_step = 24;
x = [0:2*pi/num_step:4*pi];

y = sin(x);

figure(1)
subplot(2,2,1)
plot(x,y,'o-')
xlim([0, 4*pi])
xlabel('x'); ylabel('sin(x)')
set(gca, 'XAxisLocation', 'origin'); box off
title('Fine step size')

downsample_factor = 2;
xx = x(1:downsample_factor:end)
yy = interp1(x,y,xx,'linear');
subplot(2,2,2)
plot(xx,yy,'o-')
xlim([0, 4*pi])
xlabel('x'); ylabel('sin(x)')
set(gca, 'XAxisLocation', 'origin'); box off

downsample_factor = 4;
xx = x(1:downsample_factor:end)
yy = interp1(x,y,xx,'linear');
subplot(2,2,3)
plot(xx,yy,'o-')
xlim([0, 4*pi])
xlabel('x'); ylabel('sin(x)')
set(gca, 'XAxisLocation', 'origin'); box off

downsample_factor = 6;
xx = x(1:downsample_factor:end)
yy = interp1(x,y,xx,'linear');
subplot(2,2,4)
plot(xx,yy,'o-')
xlim([0, 4*pi])
xlabel('x'); ylabel('sin(x)')
set(gca, 'XAxisLocation', 'origin'); box off