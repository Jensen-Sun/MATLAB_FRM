x = [0:0.01:2*pi];
linear_y = x;
sq_y = x.^2;
sin_y = sin(x);
cos_y = cos(x);

figure(1);
plot(x,sin_y);
hold on;
plot(x,cos_y,'--');
hold off;

set(gca, 'Xtick', 0: 2*pi/4:2*pi);
set(gca, 'Ytick', -1:0.5:1);
xticklabels({'0', '0.5\pi', '\pi', '1.5\pi', '2\pi'});
