% MATLAB Script: SplineVsPchip.m
% The script below demonstrates the similarities and differences between
% spline and pchip

x = [0 2 4 5 7.5 10]; % sample data
y = exp(-x/6).*cos(x);

cs = spline(x,y);  % cubic spline
ch = pchip(x,y);   % cubic Hermite

xi = linspace(0,10);
ysi = ppval(cs,xi);  % interpolate spline
yhi = ppval(ch,xi);  % interpolate Hermite

plot(x,y,'o',xi,ysi,':',xi,yhi)
legend('data','spline','hermite')
title('Figure 20.2: Spline and Hermite Interpolation')