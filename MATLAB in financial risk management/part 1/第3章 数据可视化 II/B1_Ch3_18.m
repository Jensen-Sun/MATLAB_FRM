t = linspace(0,2*pi,1000);
x = cos(t);
perturbation = 0.1*exp((-(t-3*pi/2).^2)/.01).*sin(200*t);
singnal = x+perturbation;
figure(1)
plot(t,x+perturbation)
xlabel('Time');
ylabel('Signal');

axes('Position',[.35 .5 .3 .3])
box on

zoomIn = (t<4.9) & (t>4.5);
plot(t(zoomIn), singnal(zoomIn))
axis tight