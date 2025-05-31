y = 0:0.01:4;
z = y/4.*cos(12*y) + 2;
x = y/4.*sin(12*y) + 2;
figure(1)
plot3(x,y,z,'LineWidth',2);
hold on
xlim([0,max(y)]);
ylim([0,max(y)]);
zlim([0,max(y)]);
xlabel('x');
ylabel('y');
zlabel('z');

plot3(x,zeros(size(y)),z);
plot3(zeros(size(x)),y,z);
plot3(x,y,zeros(size(z)));
view([1,1,1]);
box off;
grid on