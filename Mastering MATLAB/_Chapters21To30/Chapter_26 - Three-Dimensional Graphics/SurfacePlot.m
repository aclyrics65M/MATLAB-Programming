% MATLAB Script: SurfacePlot.m

% First Plot (Surface Plot)
[X,Y,Z] = peaks(30);
surf(X,Y,Z)
xlabel('X-axis')
ylabel('Y-axis')
zlabel('Z-axis')
title('Figure 26.9: Surface Plot of Peaks')

% Second Plot (Surface Plot with Flat Shading)
figure;
surf(X,Y,Z)
shading flat
xlabel('X-axis')
ylabel('Y-axis')
zlabel('Z-axis')
title('Figure 26.10: Surface Plot with Flat Shading')

% Third Plot (Surface Plot with Interpolated Shading)
figure;
surf(X,Y,Z)
shading interp
xlabel('X-axis')
ylabel('Y-axis')
zlabel('Z-axis')
title('Figure 26.11: Surface Plot with Interpolated Shading')