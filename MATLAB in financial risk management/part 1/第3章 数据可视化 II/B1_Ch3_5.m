num_var = 200; Data = randn(num_var,3);
X = Data(:,1); Y = Data(:,c2); Z = Data(:,3);
sz=10; c = linspace(0,1,length(X));

[XX, YY] = meshgrid(0:0.2:1); ZZ = exp(XX+YY);

figure(1)
subplot(1,2,1)
stem3(XX,YY,ZZ)
grid off; xlabel('x'); ylabel('y'); zlabel('z')

subplot(1,2,2)
scatter3(X,Y,Z,sz,c,"filled")
grid off; xlabel('x'); ylabel('y'); zlabel('z')