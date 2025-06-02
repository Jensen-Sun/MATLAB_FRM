x = randn(1000,1);
figure(1)
subplot(1,2,1)
histogram(x)
ylabel('Frequency')

subplot(1,2,2)
nbins = 10;
h = histogram(x,nbins)
h.Normalization = 'probability';
ylabel('Probability')