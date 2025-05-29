x = [0:0.01:2*pi];
linear_y = x;
sq_y = x.^2;
sin_y = sin(x);
cos_y = cos(x);

figure(1)
subplot(2,2,1)
plot(x, linear_y)
grid on

subplot(2,2,2)
plot(x,sq_y)
axis off

subplot(2,2,3)
plot(x,sin_y)
box off
set(gca, 'XAxisLocation', 'origin')

subplot(2,2,4)
plot(x,cos_y)
set(gcf, 'color','White')
set(gca, 'XAxisLocation', 'top')