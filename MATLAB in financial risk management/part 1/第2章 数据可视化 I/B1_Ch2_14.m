x = linspace(0,3);
y = x.^2.*sin(x);
figure(1)
plot(x,y); hold on
plot([2,2],[0,2^2*sin(2)], '--'); hold on
plot([0,2],[2^2*sin(2), 2^2*sin(2)], '--')
hold off

str = '$$ \int_{0}^{2} x^2\sin(x) dx $$';
text(0.25, 2.5, str, 'Interpreter','latex')
annotation('arrow','X',[0.32,0.5],'Y',[0.6,0.4])
set(gca,'Ytick',0:1:4)
set(gca,'Xtick',0:1:3)