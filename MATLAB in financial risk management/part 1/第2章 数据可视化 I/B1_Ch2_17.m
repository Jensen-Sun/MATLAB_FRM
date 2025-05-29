x = linspace(-pi, pi);
y_cos = cos(x); plot(x, y_cos);
% original function
y_poly = 1 - x.^2./2 + x.^4./24;
% taylor series approximation

figure(1)
subplot(2,2,1); % top left
plot(x, y_cos, 'b');
xlim([min(x), max(x)])
xlabel('x'); ylabel('y')

subplot(2,2,3);
plot(x,y_poly,'r');
xlim([min(x), max(x)])
xlabel('x'); ylabel('y')

subplot(2,2,[2,4]); % half right
plot(x,y_cos,'b',x,y_poly,'r');
xlim([min(x), max(x)])
xlabel('x'); ylabel('y')