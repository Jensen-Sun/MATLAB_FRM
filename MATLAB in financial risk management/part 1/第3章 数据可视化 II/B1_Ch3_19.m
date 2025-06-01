x = 1900:20:2000;
x_labels = {'A year','B year','C year','D year','E year','F year'}
y = [75 91 105 123.5 131 150];

figure(1)
subplot(3,1,1)
bar(x,y)
ytickformat('usd')
set(gca,'XTickLabelRotation',45)

subplot(3,1,2)
bar(x,y,.4)
% .4 is the width
ytickformat('$%,.0f')
set(gca,'XTickLabelRotation',-45)
set(gca,'XTickLabel',x_labels)

subplot(3,1,3)
barh(x,y)
xtickformat('usd')