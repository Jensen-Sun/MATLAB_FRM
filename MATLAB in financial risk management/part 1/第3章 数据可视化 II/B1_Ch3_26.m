fruits = [12 24 48];
figure(1)
subplot(1,2,1)
explode = [1 0 0];
pie(fruits, explode)
labels = {'Apple','Orange','Banana'};
legend(labels,'Location','southoutside',...
    'Orientation','horizontal')

subplot(1,2,2)
p = pie(fruits);
pText = findobj(p,'Type','text');
percentValues = get(pText,'String');
txt = {'Apple:';'Orange:';'Banana:'};
combinedtxt = strcat(txt,percentValues);

pText(1).String = combinedtxt(1);
pText(2).String = combinedtxt(2);
pText(3).String = combinedtxt(3);