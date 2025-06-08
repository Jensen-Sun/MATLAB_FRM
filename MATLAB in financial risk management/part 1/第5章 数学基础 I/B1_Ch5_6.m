x = -1.2:0.01:1.2;
x_positive = 0.2:0.01:1.2;

x_squared = x.^2;
x_linear = x;
x_sq_root = sqrt(abs(x));

figure(1)
subplot(2,2,1)
plot(x,x_squared); hold on
plot(x,x_linear); hold on
plot(x,x_sq_root)
box off
set(gca, 'XAxisLocation', 'origin')
set(gca, 'YAxisLocation', 'origin')
xlabel('x'); ylabel('y')

x_exp_2 = 2.^x;
x_log_2 = log2(x_positive);
subplot(2,2,2)
plot(x,x_exp_2); hold on
plot(x_positive,x_log_2); hold on
box off
set(gca, 'XAxisLocation', 'origin')
set(gca, 'YAxisLocation', 'origin')
xlabel('x'); ylabel('y')

x_cubic = x.^3;
x_cubic_root = nthroot(x,3);
subplot(2,2,3)
plot(x,x_cubic); hold on
plot(x,x_cubic_root)
box off
set(gca, 'XAxisLocation', 'origin')
set(gca, 'YAxisLocation', 'origin')
xlabel('x'); ylabel('y')

x_non_zero = [fliplr(-x_positive),x_positive];
x_inv_prop = 1./x_positive;
subplot(2,2,4)
plot(x_positive,x_inv_prop); hold on
x_inv_prop = 1./fliplr(-x_positive);
plot(fliplr(-x_positive),x_inv_prop); hold on
box off
set(gca, 'XAxisLocation', 'origin')
set(gca, 'YAxisLocation', 'origin')
xlabel('x'); ylabel('y')