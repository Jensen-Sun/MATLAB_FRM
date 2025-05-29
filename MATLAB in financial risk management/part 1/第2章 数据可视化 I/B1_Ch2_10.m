figure(1)
x = linspace(0, 10);
y1 = sin(x);
subplot(2,2,1)
line(x, y1)
xlabel('x'); ylabel('y');

y2 = cos(x)+1;
subplot(2,2,2)
line(x,y1);
hold on
line(x,y2)
xlabel('x'); ylabel('y');

subplot(2,2,3)
xx = [0 10]; yy = [5 5];
line(xx,yy);
hold on
xx = [0 10]; yy=[0 10];
line(xx, yy);
hold on
xx = [5 5]; yy=[0 10];
line(xx, yy);
hold on
xlabel('x'); ylabel('y');

subplot(2,2,4)
zzz = linspace(0, 4*pi, 200);
xxx = sin(zzz);
yyy = cos(zzz);
line(xxx, yyy, zzz)
view(3)
xlabel('x'); ylabel('y'); zlabel('z')