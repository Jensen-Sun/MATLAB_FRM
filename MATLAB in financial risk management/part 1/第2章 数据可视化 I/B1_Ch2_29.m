%% logarithmic scale
x = [0:0.01:2*pi];
linear_y = x;
sq_y = x.^2;
sin_y = sin(x);
cos_y = cos(x);
figure(1)
subplot(3,1,1)
semilogx(x, sin_y)
% semilogx plot data as logarithmic scales for the x-axis
grid on

subplot(3,1,2)
semilogy(x,linear_y)
% semilogy plots data with logarithmic scale for the y-axis
grid on

subplot(3,1,3)
loglog(x,sq_y)
% semilogy plots data with logarithmic scale for the y-axis
grid on