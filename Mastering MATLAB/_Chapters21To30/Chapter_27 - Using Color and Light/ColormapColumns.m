% MATLAB Script: ColormapColumns.m

N = 17;
data = [1:N+1;1:N+1]';

subplot(1,3,1)
colormap(jet(N))
pcolor(data)
set(gca,'XtickLabel','')
title('Figure 27.3: Auto Limits')
caxis auto      % automatic limits (default)

subplot(1,3,2)
pcolor(data)
axis off
title('Extended Limits')
caxis([-5,N+5]) % extend the color limits

subplot(1,3,3)
pcolor(data)
axis off
title('Restricted Limits')
caxis([5,N-5])  % restrict the color limits