theta = linspace(0, 720, 100);
rho = 0.005*theta/10;

figure(1)
theta_radians = deg2rad(theta);
polarplot(theta_radians,rho)