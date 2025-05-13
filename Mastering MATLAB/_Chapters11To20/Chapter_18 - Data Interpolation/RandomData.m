% MATLAB Script: RandomData.m

x = randn(12,1); % use column vector format
y = randn(12,1); 
plot(x,y,'o')
title('Figure 18.6: Random Data')

tri = DelaunayTri(x,y)
tri.X
tri.Triangulation

hold on
triplot(tri)
hold off
title('Figure 18.7: Delaunay Triangulation')

tri.pointLocation(0,0) % find row of tri.Triangulation closest to (0,0)
tri.Triangulation(ans,:) % vertices of triangle closest to (0,0)

testpoints = [0,0; -0.5,0.1; 1,0.5];
tri.pointLocation(testpoints)

tri.nearestNeighbor(testpoints)

[k,a] = convhull(x,y); % use the original data points
k'

a % optional 2nd argument gives area enclosed
[k,a] = convexHull(tri); % use the DelaunayTri/convexHull method
k'

figure;
plot(x,y,'o',x(k),y(k))
title('Figure 18.8: Convex Hull')

figure;
voronoi(tri)
title('Figure 18.9: Voronoi Diagram')

% Random z axis data
z = rand(12,1); % now use some random z axis data
xi = linspace(min(x), max(x), 30); % x interpolation points
yi = linspace(min(y), max(y), 30); % y interpolation points

[Xi,Yi] = meshgrid(xi,yi);   % create grid of x and y
Zi = griddata(x,y,z,Xi,Yi);  % grid the data at Xi,Yi points
figure;
mesh(Xi,Yi,Zi)
hold on
plot3(x,y,z,'ko') % show original data as well
title('Figure 18.10: Griddata Example')

% Zi values
Zi = griddata(x,y,z,Xi,Yi,'linear') % same as above (default)
Zi = griddata(x,y,z,Xi,Yi,'cubic') % triangle based cubic interpolation
Zi = griddata(x,y,z,Xi,Yi,'nearest') % triangle based nearest neigbhor