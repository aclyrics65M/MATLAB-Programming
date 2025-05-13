% MATLAB Script: mmppderExample.m

x = (0:0.1:1)*2*pi;   % same data as earlier
y = sin(x);

pp = spline(x,y);     % pp-form fitting rough data
ppd = mmppder(pp);    % pp-form of derivative

xi = linspace(0,2*pi); % finer points for interpolation
yi = ppval(pp,xi);    % evaluate curve
yyd = ppval(ppd,xi);  % evaluate derivative

plot(x,y,'o',xi,yi,xi,yyd,'--') % plot results
title('Figure 20.4: Spline Differentation')

% Spline Differentiation on a Plane
t = linspace(0,3*pi,15);
x = sqrt(t).*cos(t);
y = sqrt(t).*sin(t);
figure;
plot(x,y)
xlabel('X')
ylabel('Y')
title('Figure 20.5: Spiral Y = f(X)')

% Interpolated Spiral
ppxy = spline(t,[x;y])
ti = linspace(0,3*pi); % total range, 100 points
xy = ppval(ppxy,ti);   % evaluate both splines
size(xy)               % results are row-oriented too!
figure;
plot(x,y,'d',xy(1,:),xy(2,:))
xlabel('X')
ylabel('Y')
title('Figure 20.6: Interpolated Spiral Y = f(X)')