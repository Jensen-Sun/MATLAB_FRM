x = 0:0.1:8;
y = x.*sin(x);

xconf = [x fliplr(x)];
yconf = [y+1 fliplr(y)-1];

figure(1)
fill(xconf, yconf, 'red',...
    'FaceColor',[1,0.8,0.8],...
    'EdgeColor','none'); 
hold on

plot(x,y,'-bo','MarkerSize',...
    5,'MarkerIndices',1:5:length(y),...
    'LineWidth',1.5);
hold off

xlabel('x'); ylabel('y'); box off
set(gca, 'XAxisLocation','origin')