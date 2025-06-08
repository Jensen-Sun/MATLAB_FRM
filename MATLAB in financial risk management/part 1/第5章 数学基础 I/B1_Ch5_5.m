x = [-10:0.1:10];
p3 = [4 -4 -100 -100];
r3 = roots(p3)
y3 = polyval(p3,x);

figure(3)
plot(x,y3); hold on
plot(r3(1),0,'o',r3(2),0,'o',r3(3),0,'o')
set(gca, 'XAxisLocation', 'origin')
set(gca, 'XAxisLocation', 'origin')
xlabel('x')
ylabel('y')