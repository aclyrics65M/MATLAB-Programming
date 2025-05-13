% moviemaking exmaple: rotate a 3-D surface plot
[X,Y,Z] = sphere(50);         % create data
surf(X,Y,Z,X)                 % plot the sphere
axis vis3d tight off          % fix axes for 3D and trn off axes ticks, etc.
for k = 1:25                  % rotate and capture each frame
    view(-37.5+15*(k-1),30)   % change the viewpoint for this frame
    m(k) = getframe(gcf);     % add this figure to the frame structure array
end                           % end of loop
movie(gcf,m)                  % play the movie in the xisting figure window