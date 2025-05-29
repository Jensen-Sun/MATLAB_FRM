x = linspace(0,10);
y1 = 4 + sin(x).*exp(0.1*x);
y2 = 4 + cos(x).*exp(0.1*x);
% create semitransparent area plots
figure(1)
plot(x,y1,'b','Linewidth',1.5); hold all
plot(x,y2,'r','linewidth',1.5);
area(x,y1,'FaceColor','b','FaceAlpha',.3,'EdgeAlpha',0)
area(x,y2,'FaceColor','r','FaceAlpha',.3,'EdgeAlpha',0)
hold off
xlabel('x'); ylabel('y'); box off