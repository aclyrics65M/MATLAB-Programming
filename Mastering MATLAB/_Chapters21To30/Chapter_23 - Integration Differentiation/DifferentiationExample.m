% MATLAB Script: DifferentiationExample.m

x = [0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1];
y = [-0.447 1.978 3.28 6.16 7.08 7.34 7.66 9.56 9.48 9.30 11.2];
n = 2; % order of fit
p = polyfit(x,y,n) % find polynomial coefficients

xi = linspace(0,1,100);
yi = polyval(p,xi); % evaluate polynomial

plot(x,y,'-o',xi,yi,'--')
xlabel('x')
ylabel('y = f(x)')
title('Figure 23.4: Second Order Curve Fitting')

dp = polyder(p)

% Polynomial Derivative Plotting (Forward Difference)
dyp = polyval(dp,x);     % poly derivative for comparison
dy = diff(y)./diff(x);   % compute differences and use array division
xd = x(1:end-1);         % new x axis array since dy is shorter than y

figure;
plot(xd,dy,x,dyp,':')
xlabel('x')
ylabel('dy/dx')
title('Figure 23.5: Forward Difference Derivative Approximation')

% Polynomial Derivative Plotting (Backward Difference)
x = linspace(0,2*pi);
y = sin(x);

dy = diff(y)/(x(2)-x(1));
xd = x(2:end);

figure;
plot(x,y,xd,dy)
axis tight
xlabel('x')
ylabel('sin(x) and cos(x)')
title('Figure 23.6: Backward Difference Derivative Approximation')

% Gradient Arrow Plotting
dy = gradient(y,x);   % derivative of y at points in x
[x,y,z] = peaks(20);  % simple 2-D function
dx = x(1,2) - x(1,1); % spacing in x direction
dy = y(2,1) - y(1,1); % spacing in y direction
[dzdx,dzdy] = gradient(z,dx,dy);

figure;
contour(x,y,z)
hold on
quiver(x,y,dzdx,dzdy)
hold off
title('Figure 23.7: Gradient Arrow Plot')

% Discrete Laplacian Plotting
[x,y,z] = peaks;      % default output of peaks
dx = x(1,2) - x(1,1); % spacing in x direction
dy = y(2,1) - y(1,1); % spacing in y direction

L = del2(z,dx,dy);
figure;
surf(x,y,z,abs(L))
shading interp
title('Figure 23.8: Discrete Laplacian Color')