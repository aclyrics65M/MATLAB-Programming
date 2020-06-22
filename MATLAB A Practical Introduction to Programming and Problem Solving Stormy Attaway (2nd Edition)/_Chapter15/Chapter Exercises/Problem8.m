% MATLAB Script
% Chapter 15 Problem 8

% Integer number 1 to 10, and 10 random integers
x = 1:10; 
y = randi([0 100],1,10);

% Obtain the coefficients
coefs = polyfit(x,y,1);
linear_curve = polyval(coefs,x);
plot(x,y,'bo',x,linear_curve,'k')
xlabel('x')
ylabel('y')
title('Plot of Random Points with Linear Curve')
legend('random points', 'straight line')