x = 0:0.01:4*pi
curve1 = sin(x);
curve2 = x/4/pi;
plot(x, curve1, 'r', 'LineWidth',2);
hold on;
plot(x, curve2, 'b', 'LineWidth',2);
x2 = [x, fliplr(x)];
inBetween = [curve1, fliplr(curve2)];
fill(x2, inBetween, 'g')