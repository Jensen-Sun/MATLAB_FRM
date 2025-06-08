clc; clear all; close all
r = [0.01:0.01:0.1];
t = [0:0.5:20]';

num_row = length(r);
num_col = length(t);

tt = repmat(t,1,num_row);
rr = repmat(r,num_col,1);

pp = (1 + rr).^tt;
figure(1)
ax1 = axes('ColorOrder',brewermap(length(r),'RdYlBu'),...
    'NextPlot','replacechildren')
subplot(1,2,1,ax1)

plot(t,pp); hold on
plot(t,2*ones(size(t)));
xlabel('Year(s)'); ylabel('Exponential growth')
box off

subplot(1,2,2)
contour(tt,rr,pp,[1.1,1.3,1.5,2:0.5:3,4:7],...
    'ShowText','on'); hold on
contour(tt, rr, pp, [2 2],'LineWidth',3)
xlabel('Year(s)'); ylabel('Growth rate')
colorbar