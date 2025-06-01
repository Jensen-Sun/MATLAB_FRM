figure(1)
ax1 = axes('Position',[0.1 0.1 0.7 0.7]);
ax2 = axes('Position',[0.65 0.65 0.28 0.28]);
contour(ax1,peaks(20))
surf(ax2,peaks(20))