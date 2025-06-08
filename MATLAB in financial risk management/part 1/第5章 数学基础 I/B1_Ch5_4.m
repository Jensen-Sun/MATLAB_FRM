x = [-3:0.05:3];
figure(1)
subplot(1,2,1)
y_1 = (x-1).*(x+2);
plot(x,y_1); hold on
xlabel('x'); ylabel('y')
daspect([1 1 1])
box off; ylim([-3, 3]); xlim([-3, 3])
set(gca,'XAxisLocation','origin')
set(gca,'YAxisLocation','origin')

subplot(1,2,2)
y_2 = -(x+1).*(x-2);
plot(x,y_2); hold on
xlabel('x'); ylabel('y')
daspect([1 1 1])
box off; ylim([-3, 3]); xlim([-3, 3])
set(gca,'XAxisLocation','origin')
set(gca,'YAxisLocation','origin')