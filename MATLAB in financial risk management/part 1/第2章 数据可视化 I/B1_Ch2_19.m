close all; clear all; clc
rho = 0.66; ave_1=0; ave_2=0;
var1=1^2; var2=2^2;
cov12=rho*(var1*var2)^0.5;
num_sims = 1000;

AVEs=[ave_1 ave_2];
COV_Mtx=[var1 cov12;
         cov12 var2];
X = mvnrnd(AVEs, COV_Mtx, num_sims);
X1 = X(:,1); X2 = X(:,2);

figure(1)
num_bins = 20;
subplot(4,4,[2:4 6:8 10:12]); %top right square
plot(X2,X1,'+')
xlim([-8,8]);
ylim([-4,4]);
y1 = get(gca,'ylim');
x1 = get(gca, 'xlim');

subplot(4,4,[1 5 9]);
histfit(X1, num_bins);
xlim(y1); view(90,-90); box off;

subplot(4,4,[14:16]);
histfit(X2, num_bins)
xlim(x1); box off