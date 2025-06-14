% MATLAB Script: CooperColormap.m

n = 21;
map = copper(n);
colormap(map)
subplot(2,1,1)
[xx,yy] = meshgrid(0:n,[0 1]);
c = [1:n+1;1:n+1];
pcolor(xx,yy,c)
set(gca,'Yticklabel','')
title('Figure 27.1a: Pcolor of Copper')
subplot(2,1,2)
rgbplot(map)
xlim([0,n])
title('Figure 27.1b: RGBplot of Copper')

% Colorbar Added 3D Plot
figure;
mesh(peaks)
axis tight
colorbar
title('Figure 27.2: Colorbar Added')