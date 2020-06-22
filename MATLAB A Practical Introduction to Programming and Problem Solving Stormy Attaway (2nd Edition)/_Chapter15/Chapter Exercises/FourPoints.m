% MATLAB Script
% Chapter 15 Problem 13

% Create a vector for four points. Fit a straight line through the points,
% and also a quadratic. Plot both of these, and the points on one figure
% with legends.

% Four points vectors
x = randi([-10 10], 1, 4);
y = randi([-10 10], 1, 4);

% Obtain the coefficients
coefs1 = polyfit(x,y,1);
coefs2 = polyfit(x,y,2);

% Obtain the linear and quadratic curves
curve1 = polyval(coefs1,x);
curve2 = polyval(coefs2,x);

% Plot the points and the Linear and Quadratic Curves
plot(x,y,'bo',x,curve1,'r',x,curve2,'g')
xlabel('x')
ylabel('y')
title('Vector of Four Points with Linear and Quadratic Curves')
