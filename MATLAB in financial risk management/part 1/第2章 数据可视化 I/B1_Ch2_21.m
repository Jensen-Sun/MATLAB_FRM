x = linspace(0, 3*pi, 200);
y = cos(x) + rand(1,200);
c = linspace(1, 10, length(x));

figure(1)
subplot(2,1,1)
sz = linspace(1,50,200);
% sz specifies the circle size
scatter(x,y,sz);
box off

subplot(2,1,2)
sz = 25;
% when sz is a scalar, the size of the circle is fixed
% c specifies the varying circle color
scatter(x,y,sz,c,'filled');
box off