IR = 0.05;
m_freq = [1, 2, 4, 12, 52, 365];

Returns = effrr(IR, m_freq);

bar(Returns, 0.5)
c = {'m=1','m=2','m=4','m=12','m=52','m=365'};
set(gca,'xticklabel',c)
xlabel('Annual compounding frequency')
ylabel('Annual effective rate of return')
ylim([0.045, 0.055])

