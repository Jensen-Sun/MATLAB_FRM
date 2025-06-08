% polynomials
% degree 1 - linear
p1 = [1 5];
% x + 5 = 0 gives the root
r1 = roots(p1)
x = [-10:0.1:10];

figure(1)
y1 = polyval(p1,x);
plot(x,y1); hold on
plot(r1,0,'o')
set(gca,'XAxisLocation','origin')
set(gca,'YAxisLocation','origin')
xlabel('x')
ylabel('y')