X1 = normrnd(5,4,100,1);
% 100 random values with mu = 5 and sigma = 4
X2 = normrnd(6,2,100,1);
X3 = normrnd(4,1,100,1);
figure(1)
boxplot([X1,X2,X3],'Labels',{'mu = 5','mu = 6','mu = 4'})
ylabel('Random values')