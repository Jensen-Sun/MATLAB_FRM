%% Add legend
y1 = rand(3);
figure(1)
ax1 = subplot(2,1,1);
plot(y1, 'o--')

y2 = rand(5);
ax2 = subplot(2,1,2);
plot(y2, 'x:')

legend(ax1, {'line1', 'line2', 'line3'})
% add legend to the first subplot only
legend(ax2, {'line1', 'line2', 'line3', 'line4'}, ...
    'Location','northwest','NumColumns', 2)
% add legend to the second subplot only