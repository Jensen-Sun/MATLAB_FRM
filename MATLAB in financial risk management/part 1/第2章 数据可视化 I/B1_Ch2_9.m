x = 1:10;
y = x + randn(1,10);
figure(1)
scatter(x,y,25,'b','o')

% superimpose a least-squares line on the scatter plot
refline
mu = mean(y);
% add a horizontal reference line at the mean of the scatter plot
hline = refline([0 mu]);
hline.Color = 'r';
xlabel('x'); ylabel('y')