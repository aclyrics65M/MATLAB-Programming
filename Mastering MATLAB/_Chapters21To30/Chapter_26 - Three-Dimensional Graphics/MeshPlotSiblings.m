% MATLAB Script: MeshPlotSiblings.m

% First Plot (Mesh Plot with Underlying Contour Plot)
[X,Y,Z] = peaks(30);
meshc(X,Y,Z) % mesh plot with underlying contour plot
title('Figure 26.6: Mesh Plot with Contours')
pause(5)

% Second Plot (Mesh Plot with Zero Plane)
figure;
meshz(X,Y,Z)
title('Figure 26.7: Mesh Plot with Zero Plane')

% Third Plot (Waterfall Plot)
figure;
waterfall(X,Y,Z)
hidden off
xlabel('X-axis')
ylabel('Y-axis')
zlabel('Z-axis')
title('Figure 26.8: Waterfall Plot')