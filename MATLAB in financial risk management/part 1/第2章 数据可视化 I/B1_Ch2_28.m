matrix_data = randi(10,5);
figure(1)
subplot(1,2,1)
heatmap(matrix_data);

subplot(1,2,2)
imagesc(matrix_data);
colorbar