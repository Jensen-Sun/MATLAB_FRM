clc; clear all; close all
s_range = 0.01:5:100;
k_range = 50;
r = 0.1;
vol = 0.35;
s_length = length(s_range);
T_range = [1:1:48]; % month(s)
T_length = length(T_range);
T_matrix = T_range(ones(s_length,1),:)'/12;

T_holder = ones(length(T_range),1);
S_holder = s_range(T_holder,:);
All_1 = ones(size(T_matrix));
Gamma_matrix = blsgamma(S_holder,...
    k_range*All_1,r*All_1,...
    T_matrix,vol*All_1);

my_col = brewermap(T_length,'RdYlBu');

figure(1)
subplot(1,2,1)
mesh(s_range, T_range, Gamma_matrix, 'MeshStyle','column');

xlabel('S'); ylabel('T'); zlabel('Gamma');
xlim([0 max(s_range)])
ylim([min(T_range) max(T_range)])
set(gcf, 'color', 'white'); box off; grid off
view(-45,30) % first view angle

subplot(1,2,2)
mesh(s_range, T_range, Gamma_matrix, 'MeshStyle','column');

xlabel('S'); ylabel('T'); zlabel('Gamma');
xlim([0 max(s_range)])
ylim([min(T_range) max(T_range)])
set(gcf, 'color', 'white'); box off; grid off
view(135,30) % second view angle