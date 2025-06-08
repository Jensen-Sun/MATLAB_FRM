clc; clear all; close all
Qs = [2, 1, 0.5, -0.5, -1, -2];
n = [1:1:10];

figure(1)
for i = 1:length(Qs)
    q = Qs(i);
    a_n = q.^n;
    subplot(2,3,i)
    plot(n,a_n,'o')
    xlabel('n'); ylabel('a_n')
    box off; grid off
    title(['q=', num2str(q)]);
    xlim([min(n) max(n)])
    set(gca, 'XAxisLocation', 'origin')
    set(gca, 'Xtick', [1,5,10])
end
