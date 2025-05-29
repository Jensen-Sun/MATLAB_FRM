X = linspace(0,2*pi,20)';
Y = [cos(X), 0.5*sin(X)];

figure(1)
subplot(2,1,1)
stem(X,Y)
xlim([0, 2*pi])

subplot(2,1,2)
stem(X,Y,'--','filled')
xlim([0, 2*pi])