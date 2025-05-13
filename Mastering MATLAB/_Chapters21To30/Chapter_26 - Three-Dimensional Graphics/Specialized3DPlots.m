% MATLAB Script: Specialized3DPlots.m

% Ribbon Plot of Peaks
Z = peaks;
ribbon(Z);
title('Figure 26.23: Ribbon Plot of Peaks')

% 2-D Quiver Plot
figure;
[X,Y,Z] = peaks(16);
[DX,DY] = gradient(Z,0.5,0.5);
contour(X,Y,Z,10)
hold on
quiver(X,Y,DX,DY)
hold off
title('Figure 26.24: 2-D Quiver Plot')

% 3-D Quiver Plot
figure;
[X,Y,Z] = peaks(20);
[Nx,Ny,Nz] = surfnorm(X,Y,Z)
surf(X,Y,Z)
hold on
quiver3(X,Y,Z,Nx,Ny,Nz)
axis tight
hold off
title('Figure 26.25: 3-D Quiver Plot')

% Five Random Filled Triangles
figure;
fill3(rand(3,5),rand(3,5),rand(3,5),rand(3,5))
grid on
title('Figure 26.26: Five Random Filled Triangles')

% Stem Plot of Random Data
figure;
Z = rand(5);
stem3(Z,'ro','filled')
grid on
title('Figure 26.27: Stem Plot of Random Data')
