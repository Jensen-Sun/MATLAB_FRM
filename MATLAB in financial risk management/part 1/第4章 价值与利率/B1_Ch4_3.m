y = 0.05;
r = y;
m = [1,2,4,12,52,365];

T = 5;
FV = 300;

PV = FV.*(1 + y./m).^(-T.*m);
PV_cont = FV*exp(-r*T);

figure(1)
PV = [PV, PV_cont];
bar(PV, 0.5)
c = {'m=1','m=2','m=4','m=12','m=52','m=365','e^{-rT}'};
set(gca,'xticklabel',c)
ylim([220, 236])
ylabel('Present value [USD]')
xlabel('Cases')
set(gcf,'color','w');