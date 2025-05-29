clear all; close all; clc;
x = -2:0.01:2;
exp_series = 1:1:6;
my_col = brewermap(length(exp_series), 'RdylBu');
figure(1);
for k = 1:length(exp_series)
    exp_current = exp_series(k);
    YY(:,k) = x.^exp_current;
    txt = ['Exponent = ', num2str(exp_current)];
    plot(x, YY(:,k),'DisplayName',txt,'Color',...
        my_col(k,:),'LineWidth',1.5);
    hold on
end
hold off; legend show;
xlabel('x'); ylabel('y');