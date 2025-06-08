x = [-5:0.5:5];
figure(1)
subplot(1,3,1)
y_1 = x + 2;
plot(x,y_1); hold on
xlabel('x'); ylabel('y')
daspect([1 1 1])
box off; ylim([-3, 7])
set(gca,'XAxisLocation','origin')
set(gca,'YAxisLocation','origin')

subplot(1,3,2)
y_2 = -x + 2;
plot(x,y_2); hold on
xlabel('x'); ylabel('y')
daspect([1 1 1])
box off; ylim([-3, 7])
set(gca, 'XAxisLocation', 'origin')
set(gca, 'YAxisLocation', 'origin')

subplot(1,3,3)
y_3 = -x*0 + 2;
plot(x,y_3); hold on
xlabel('x'); ylabel('y')
daspect([1 1 1])
box off; ylim([-3, 7])
set(gca, 'XAxisLocation', 'origin')
set(gca, 'YAxisLocation', 'origin')
