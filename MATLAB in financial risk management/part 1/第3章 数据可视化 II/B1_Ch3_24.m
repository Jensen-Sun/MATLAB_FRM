X = [1:10];
Y = 10*rand(10,1);
err_low = rand(10,1);
err_high = rand(10,1);
figure(1)
bar(X,Y); hold on
er_handle = errorbar(X,Y,err_low,err_high)
er_handle.Color = [0 0 0];
er_handle.LineStyle = 'none'
hold off
xlabel('x'); ylabel('y'); box off