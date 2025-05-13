% MATLAB Script: PiecewisePolynomials.m

x = 0:12;
y = tan(pi*x/25);
xi = linspace(0,12);
yi = spline(x,y,xi);
plot(x,y,'o',xi,yi)
title('Figure 20.1: Spline Fit')

% Spline function application
pp = spline(x,y)

yi = ppval(pp,xi);
xi2 = linspace(10,12);
yi2 = ppval(pp,xi2);
xi3 = 10:15;
yi3 = ppval(pp,xi3)
yi4 = ppval(xi3,pp) % can be called with arguments reversed