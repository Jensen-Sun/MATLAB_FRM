x = [2014 2015 2016 2017 2018];
Product_A = [37 39 46 56 67];
w1 = 0.5;
bar(x,Product_A,w1,'FaceColor',[0.2 0.2 0.5])
product_B = [22 24 32 41 50];
w2 = .25;
hold on
bar(x, product_B,w2,'FaceColor',[0 0.7 0.7])
hold off
grid off
ylabel('Sale')
legend({'Product A','Product B'},'Location','northwest')