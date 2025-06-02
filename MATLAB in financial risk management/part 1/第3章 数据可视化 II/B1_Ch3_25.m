Y = randi(10,8,3);
figure(1)
subplot(1,2,1)
bar3(Y); box off; grid off

subplot(1,2,2)
bar3(Y,'stacked'); box off; grid off