clc; clear all; close all
Y = rand(30,1);
level = 0.5;
figure(1)
aboveLine = (Y >= level);

bottomLine = Y;
topLine = Y;

bottomLine(aboveLine) = NaN;
topLine(~aboveLine) = NaN;

bar_handle = bar(bottomLine,'red'); hold on
bar(topLine,'blue')

b1 = bar_handle.BaseLine
b1.BaseValue = 0.5;
b1.Color = 'green';
b1.LineWidth = 1;
xlabel('x'); ylabel('y')
box off; grid on