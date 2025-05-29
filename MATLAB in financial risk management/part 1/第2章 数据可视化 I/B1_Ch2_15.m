x = linspace(0, 5, 1000);
y = 100*exp(x).*sin(20*x);

figure(1)
subplot(2,1,1)
plot(x,y)
ax = gca;
ax.YAxis.Exponent = 3;
set(gca, 'Xtick', 0:1:5)
xtickformat('%.2f')

subplot(2,1,2)
plot(x,y)
ax = gca;
ax.YAxis.Exponent = 0;
set(gca,'Xtick',0:1:5)