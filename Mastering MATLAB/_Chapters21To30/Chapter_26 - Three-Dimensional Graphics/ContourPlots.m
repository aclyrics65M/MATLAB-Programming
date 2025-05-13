% MATLAB Script: ContourPlots.m

% Contour Plot Graph (2-D and 3-D)
[X,Y,Z] = peaks;
subplot(1,2,1)
contour(X,Y,Z,20)           % generate 20 2-D contour lines
axis square
xlabel('X-axis')
ylabel('Y-axis')
title('Figure 26.20a: 2-D Contour Plot')
subplot(1,2,2)
contour3(X,Y,Z,20)         % the same contour plot in 3-D
xlabel('X-axis')
ylabel('Y-axis')
zlabel('Z-axis')
title('Figure 26.20b: 3-D Contour Plot')

% Pseudocolor Plot and Filled Contour Plot
figure;
subplot(1,2,1)
pcolor(X,Y,Z)
shading interp    % remove the grid lines
axis square
title('Figure 26.21a: Pseudocolor Plot')
subplot(1,2,2)
contourf(X,Y,Z,12)    % filled contour plot with 12 contours
axis square
xlabel('X-axis')
ylabel('Y-axis')
title('Figure 26.21b: Filled Contour Plot')

% Contour Plot with Labels
figure;
C = contour(X,Y,Z,12);
clabel(C)
title('Figure 26.22: Contour Plot with Labels')