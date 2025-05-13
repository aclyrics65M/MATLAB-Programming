% MATLAB Script: BananaFunction.m

x = [-1.5:0.125:1.5];  % range for x1 variable
y = [-0.6:0.125:2.8];  % range for x2 variable

[X,Y] = meshgrid(x,y); % grid of all x and y
Z = 100.*(Y-X.*X).^2 + (1-X).^2; % evaluate banana

mesh(X,Y,Z)
hidden off
xlabel('x(1)')
ylabel('x(2)')
title('Figure 22.2: Banana Function')
hold on
plot3(1,1,1,'k.','markersize',30)
hold off