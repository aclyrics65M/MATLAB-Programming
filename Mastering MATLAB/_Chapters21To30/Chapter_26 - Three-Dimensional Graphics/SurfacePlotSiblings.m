% MATLAB Script: SurfacePlotSiblings.m

% First Plot (Surface Plot with a Hole)
[X,Y,Z] = peaks(30);
x = X(1,:);               % vector of x axis
y = Y(:,1);               % vector of y axis
i = find(y>0.8 & y<1.2);  % find y axis indices of hole
j = find(x>-0.6 & x<0.5); % find x axis indices of hole
Z(i,j) = nan;             % set values at hole indices to NaNs
surf(X,Y,Z)
xlabel('X-axis')
ylabel('Y-axis')
zlabel('Z-axis')
title('Figure 26.12: Surface Plot with a Hole')

% Second Plot (Surface Plot with Contours)
figure;
surfc(X,Y,Z)
xlabel('X-axis')
ylabel('Y-axis')
zlabel('Z-axis')
title('Figure 26.13: Surface Plot with Contours')

% Third Plot (Surface Plot with Lighting)
figure;
surfl(X,Y,Z)            % surf plot with lighting
shading interp          % surfl plots look best with interp shading
colormap pink           % they also look better with shades of a single color
xlabel('X-axis')
ylabel('Y-axis')
zlabel('Z-axis')
title('Figure 26.14: Surface Plot with Lighting')

% Fourth Plot (Surface Plot with Normals)
[X,Y,Z] = peaks(15);
figure;
surfnorm(X,Y,Z)
xlabel('X-axis')
ylabel('Y-axis')
zlabel('Z-axis')
title('Figure 26.15: Surface Plot with Normals')