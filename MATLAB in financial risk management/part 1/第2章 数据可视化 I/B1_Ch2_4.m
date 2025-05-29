x = 0:pi/20:2*pi;
plot(x,sin(x),'-.r*')
hold on
plot(x,sin(x-pi/2),'--mo')
plot(x,sin(x-pi),':bs')
hold off