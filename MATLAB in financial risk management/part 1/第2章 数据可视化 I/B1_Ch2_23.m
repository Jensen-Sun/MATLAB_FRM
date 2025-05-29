%% fill patch
x = linspace(0, 2*pi, 100);
y = cos(x);
figure(1)
subplot(1,2,1)
plot(x,y)
xlabel('x')
ylabel('Value of functions')
hold on
fill(x,y,'c')

subplot(1,2,2)
plot(x,y)
xlabel('x')
ylabel('Value of functions')
hold on
fill([x,fliplr(x)], [zeros(1,length(x)),fliplr(y)],'c')
hold off