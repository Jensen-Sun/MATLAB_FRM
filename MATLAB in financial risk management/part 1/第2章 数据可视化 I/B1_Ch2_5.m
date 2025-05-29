x = 0:0.01:2*pi;
sin_y = sin(x);
loc_min = find(sin_y == min(sin_y));
% location of min value of sin_y
loc_max = find(sin_y == max(sin_y));
% location of max value of sin_y
figure(1)
plot(x, sin_y, '-p','MarkerIndices',[loc_min, loc_max],...
    'MarkerFaceColor','red',...
    'MarkerEdgeColor','k',...
    'MarkerSize',10)
box off
set(gca, 'XAxisLocation', 'origin')
xlabel('x'); ylabel('y')