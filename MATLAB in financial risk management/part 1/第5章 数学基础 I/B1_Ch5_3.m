%% degree 2 - quadratic
x = [-10:0.1:10];
p2 = [1 6 -16];

r2 = roots(p2)
y2 = polyval(p2,x);
figure(1)
plot(x,y2); hold on
plot(r2(1),0,'o',r2(2),0,'o')
set(gca, 'XAxisLocation', 'origin')
set(gca, 'YAxisLocation', 'origin')
xlabel('x')
ylabel('y')