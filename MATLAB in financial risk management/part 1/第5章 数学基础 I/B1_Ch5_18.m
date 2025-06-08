%% 2D interpolation
[X, Y] = meshgrid(-3:3);
V = peaks(X,Y);

figure(1)
mesh(X,Y,V)
title('Original Sampling');

[Xq,Yq] = meshgrid(-3:0.25:3);
Vq = interp2(X,Y,V,Xq,Yq);

figure(2)
subplot(1,2,1)
mesh(Xq,Yq,Vq);
title('Linear Interpolation Using Finer Grid');

Vq_cubic = interp2(X,Y,V,Xq,Yq,'cubic');
subplot(1,2,2)
mesh(Xq,Yq,Vq_cubic);
title('Cubic Interpolation Over Finer Grid')