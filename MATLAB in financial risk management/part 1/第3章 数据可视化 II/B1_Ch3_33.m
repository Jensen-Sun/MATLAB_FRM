clc; close all; clear all
a = -2; b = 2;
num_bins = 10;

figure(1)
subplot(2,2,1)
num_points = 1000;
plot_unif_hist(a,b,num_points)
view([1,1,1])

subplot(2,2,2)
plot_unif_hist(a,b,num_points)
view([1,0,0])

subplot(2,2,3)
plot_unif_hist(a,b,num_points)
view([0,1,0])

subplot(2,2,4)
plot_unif_hist(a,b,num_points)
view([0,0,1])

function plot_unif_hist(a, b, num_points)
unif_rand = a + (b - a)*rand(num_points,3);
plot3(unif_rand(:,1), unif_rand(:,2), unif_rand(:,3), '.');
xlabel('x_1'); ylabel('x_2'); zlabel('x_3');
box off; grid off
end