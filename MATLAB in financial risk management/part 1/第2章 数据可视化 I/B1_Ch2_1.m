x = [0:0.1:2*pi]
linear_y = x
sq_y = x.^2;
sin_y = sin(x);
cos_y = cos(x);
figure(1);
plot(x, sin_y);
hold on; % hold the current plot, and plot another on top
plot(x,cos_y,'--')
hold off

figure(2);
subplot(4,1,1);
plot(x, linear_y, 'y--');
subplot(4,1,2);
plot(x, sq_y, 'k:');
subplot(4,1,3);
plot(x,sin_y,'g--');
subplot(4,1,4);
plot(x,cos_y,'r:');