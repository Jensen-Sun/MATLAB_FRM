%% labels
% xlabel(s1, 'keyword', keywordvalue,...)
% ylabel(s2, 'keyword', keywordvalue,...)
% title(s3, 'keyword', keywordvalue,...)
% text(x, y, s4, 'keyword', keywordvalue,...)

x = [0:0.01:5];
linear_y = x;
sq_y = x.^2;

x_axis_min = 0;
x_axis_max = 5;
y_axis_min = 0;
y_axis_max = max([linear_y, sq_y]);

figure(1)
subplot(1,2,1)
plot(x,linear_y)
xlim([x_axis_min, x_axis_max])
ylim([y_axis_min, y_axis_max])
x_legend = 'Independent variable, x';
y_legend = 'Dependent variable, y';
xlabel(x_legend)
ylabel(y_legend)
title('Linear function')

subplot(1,2,2)
plot(x,sq_y)
axis([x_axis_min, x_axis_max, y_axis_min, y_axis_max])
xlabel(['x,max(x)=',num2str(max(x))])
ylabel(['y,max(y)=',num2str(max(sq_y))])
title('Square function')