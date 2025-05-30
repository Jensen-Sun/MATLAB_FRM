%% double y plot
% plotyy is not recommended
figure(1)
x = linspace(0,10);
y = sin(3*x);
yyaxis left
plot(x,y)
ylabel('sin(3x)')

z = sin(3*x).*exp(0.5*x);
yyaxis right
plot(x,z,'--')
ylim([-150 150])
xlabel('x')
ylabel('sin(3x)e^{(0.5x)}')

days = 0:5:35;
conc = [515 420 370 250 135 120 60 20];
temp = [29 23 27 25 20 23 23 17];

figure(2)
yyaxis left
b = bar(days, temp, 0.4);
yyaxis right
p = plot(days, conc, 'o-');
p.LineWidth = 2;

title('Temperature and Concentration Data')
xlabel('Day')
yyaxis left
ylabel('Temperature (\circC)')
yyaxis right
ylabel('Concentration')