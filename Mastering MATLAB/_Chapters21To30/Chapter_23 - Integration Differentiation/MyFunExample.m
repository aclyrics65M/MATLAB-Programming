% MATLAB Script: MyFunExample.m

x = linspace(0,pi,20);    % xmin to xmax
y = linspace(-pi,pi,20);  % ymin to ymax

[xx,yy] = meshgrid(x,y);  % create grid of point to evaluate at
zz = myfun(xx,yy);        % evaluate at all points

mesh(xx,yy,zz)
xlabel('x')
ylabel('y')
title('Figure 23.3: myfun.m plot')