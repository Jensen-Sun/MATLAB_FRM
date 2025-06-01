Y = rand(30,1);
figure(1)
bar_handle = bar(Y);
b1 = bar_handle.BaseLine

b1.BaseValue = 0.5;
b1.Color = 'red';
b1.LineWidth = 1;

xlabel('x'); ylabel('y')
box off; grid off