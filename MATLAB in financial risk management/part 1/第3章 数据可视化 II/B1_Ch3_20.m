x = 1900:20:2000;
y = [2 2 3; 2 5 6; 2 8 9; 2 11 12];
% percentage values

figure(1)
subplot(2,1,1)
bar(y)
ytickformat('percentage')
set(gca,'YTickLabelRotation',90)

subplot(2,1,2)
bar(y,.3,'stacked')
ytickformat('percentage')
