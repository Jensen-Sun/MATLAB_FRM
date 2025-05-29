clear all; close all; clc;
x = [-2:0.01:2];
exp_series = [1:1:5];
figure(1);
for k = 1:length(exp_series)
    exp_current = exp_series(k);
    YY(:,k) = x.^exp_current;
    txt = ['Exponent =', num2str(exp_current)];
    plot(x, YY(:,k), 'DisplayName',txt,'Color',...
        [0 0 0]+1/length(exp_series)*(k-1));
    hold on
end

hold off;
legend show;
xlabel('x');
ylabel('y')