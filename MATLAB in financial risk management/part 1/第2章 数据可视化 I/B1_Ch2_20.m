alpha = 0.01;
beta = 0.5;
t = 0:10;
f = exp(-alpha*t).*sin(beta*t);
stairs(t,f)
hold on
plot(t, f, 'o--')
hold off