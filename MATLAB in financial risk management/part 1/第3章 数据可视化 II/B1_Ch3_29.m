close all; clear all; clc
rho = 0.66; ave_1 = 0; ave_2 = 0;
var1=1^2; var2=2^2;
cov12 = rho*(var1*var2)^0.5;
num_sims = 1000;

AVEs = [ave_1 ave_2];
COV_Mtx = [var1 cov12;cov12 var2]
X12 = mvnrnd(AVEs,COV_Mtx,num_sims);
X1 = X12(:,1); X2 = X12(:,2);

figure(1)
num_bins = 20;
subplot(4,4,[2:4 6:8 10:12]); % top right squares
plot(X1,X2,'+')
xlim([-4,4]); ylim([-8,8])
y1=get(gca,'ylim'); x1=get(gca,'xlim')

subplot(4,4,[1 5 9]); % top left
histfit(X1,num_bins)
xlim(y1); view(90,-90);box off

subplot(4,4,[14:16]); % Btm right
histfit(X2,num_bins)
xlim(x1);box off

[bin_counts, Xedges, Yedges] = histcounts2(X1,X2,20);
X_centers = Xedges(1:end-1) + (Xedges(2) - Xedges(1))/2;
Y_centers = Yedges(1:end-1) + (Yedges(2) - Yedges(1))/2;
[XX,YY] = meshgrid(X_centers, Y_centers);

figure(2)
zz = bin_counts;
c = imagesc(zz)
set(c,'AlphaData',~isnan(zz))
set(gcf,'color','white')
xlabel('x'); ylabel('y')

figure(3)
zz = bar3(bin_counts);
for k = 1:length(zz)
    zdata = zz(k).ZData;
    zz(k).CData = zdata;
    zz(k).FaceColor = 'interp';
end
view([1,1,1])

figure(4)
surf(bin_counts)
view([1,1,1])

figure(5)
scatter(XX(:),YY(:),bin_counts(:)+eps,bin_counts(:)+eps,'filled')
