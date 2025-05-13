% MATLAB Script: MeshSurfacePlotsIrregularData.m

x = rand(1,50);
y = rand(1,50);
z = peaks(x,y*pi);
t = delaunay(x,y);

% First Plot (Triangular Mesh Plot)
trimesh(t,x,y,z)
hidden off
title('Figure 26.16: Triangular Mesh Plot')
pause(5)

% Second Plot (Triangular Surface Plot)
figure;
trisurf(t,x,y,z)
title('Figure 26.17: Triangular Surface Plot')
pause(5)

% Third Plot (Voronoi Plot)
figure;
voronoi(x,y)
title('Figure 26.18: Voronoi Plot')