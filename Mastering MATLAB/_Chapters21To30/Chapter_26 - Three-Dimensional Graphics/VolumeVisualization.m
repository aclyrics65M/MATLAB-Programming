% MATLAB Script: VolumeVisualization.m

x = linspace(-3,3,13);        % x coordinate pairs
y = 1:20;                     % y coordinate pairs
z = -5:5;                     % z coordinate pairs
[X,Y,Z] = meshgrid(x,y,z);    % meshgrid works here too!
size(X)

% Slice Plot Through Volume
V = sqrt(X.^2 + cos(Y).^2 + Z.^2);
slice(X,Y,Z,V,[0 3],[5 15],[-3 5])
xlabel('X-axis')
ylabel('Y-axis')
zlabel('Z-axis')
title('Figure 26.28: Slice Plot Through a Volume')

% Slice Plot Using Surface
figure;
[xs,ys] = meshgrid(x,y);
zs = sin(-xs+ys/2);  % a surface to use
slice(X,Y,Z,V,xs,ys,zs)
xlabel('X-axis')
ylabel('Y-axis')
zlabel('Z-axis')
title('Figure 26.29: Slice Plot Using a Surface')

% Slice Plot with Selected Contours
figure;
slice(X,Y,Z,V,[0 3],[5 15],[-3 5])
hold on
h = contourslice(X,Y,Z,V,3,[5 15],[]);
set(h,'EdgeColor','k','Linewidth',1.5)
xlabel('X-axis')
ylabel('Y-axis')
zlabel('Z-axis')
title('Figure 26.30: Slice Plot with Selected Contours')
hold off

% Isosurface Plot
figure;
[X,Y,Z,V] = flow(13);          % get flow data
fv = isosurface(X,Y,Z,V,-2);   % find surface of value -2

subplot(1,2,1)
p = patch(fv);                 % plot V = -2 surface
set(p,'FaceColor',[0.5 0.5 0.5],'EdgeColor','Black'); % modify patches
view(3), axis equal tight, grid on % pretty it up
title({'Figure 26.31a:' 'Isosurface Plot, V = 2'})

subplot(1,2,2)
p = patch(shrinkfaces(fv,0.3));   % shrink faces to 30% of original
set(p,'Facecolor',[0.5 0.5 0.5],'EdgeColor','Black'); % modify patches
view(3), axis equal tight, grid on % pretty it up
title({'Figure 26.31b:' 'Shrunken Face Isosurface Plot, V = 2'})

% Additional Isosurface Plot
figure;
[X,Y,Z,V] = flow;
fv = isosurface(X,Y,Z,V,-2);
subplot(2,2,1) % Original
p = patch(fv);
Np = size(get(p,'Faces'),1);
set(p,'FaceColor',[0.5 0.5 0.5],'EdgeColor','Black');
view(3), axis equal tight, grid on % pretty it up
zlabel(sprintf('%d Patches',Np))
title('Figure 26.32a: Original')

subplot(2,2,2) % Reduce Volume
[Xr,Yr,Zr,Vr] = reducevolume(X,Y,Z,V,[3 2 2]);
fvr = isosurface(Xr,Yr,Zr,Vr,-2);
p = patch(fvr);
Np = size(get(p,'Faces'),1);
set(p,'FaceColor',[0.5 0.5 0.5],'EdgeColor','Black');
view(3), axis equal tight, grid on % pretty it up
zlabel(sprintf('%d Patches',Np))
title('Figure 26.32b: Reduce Volume')

subplot(2,2,3)  % Reduce Patch
p = patch(fv);
set(p,'FaceColor',[0.5 0.5 0.5],'EdgeColor','Black');
view(3), axis equal tight, grid on % pretty it up
reducepatch(p,0.15) % keep 15 percent of the faces
Np = size(get(p,'Faces'),1);
zlabel(sprintf('%d Patches',Np))
title('Figure 26.32c: Reduce Patches')

subplot(2,2,4) % Reduce Volume and Patch
p = patch(fvr);
set(p,'FaceColor',[0.5 0.5 0.5],'EdgeColor','Black');
view(3), axis equal tight, grid on % pretty it up
reducepatch(p,0.15) % keep 15 percent of the faces
Np = size(get(p,'Faces'),1);
zlabel(sprintf('%d Patches',Np))
title('Figure 26.32d: Reduce Both')