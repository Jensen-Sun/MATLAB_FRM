%% 3D plot
x = 0:pi/50:2*pi;
n_series = 1:5;
n_length = length(n_series);

for i = 1:n_length
    n = n_series(i);
    y = sin(n*x);
    plot3(n*ones(1,length(x)),x,y);
    hold on
end
hold off; grid on
xlabel('n'); ylabel('x'); zlabel('sin(nx)')