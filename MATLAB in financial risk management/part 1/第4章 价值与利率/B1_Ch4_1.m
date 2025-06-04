clc; clear all; close all
time = [1:50]; % unit: year(s)
PV = 100;
r = [0.01:0.01:0.05];
r_num = length(r);
figure(1)

for i = 1:r_num
    r_i = r(i);
    FV = PV*(1 + r_i).^time;
    plot(time,FV); hold on

end

xlim([min(time) max(time)])
xlabel('Time [year(s)]')
ylabel('Future value [USD]')
legend('r=1%','r=2%','r=3%','r=4%','r=5%')
set(gcf,'color','white')