% MATLAB Script
% Chapter 15 Problem 5

% Vector x contains integers 1 through 20
x = 1:20;
y = randi([-2 2],1,20);

% Obtain the coefficients
coefs = polyfit(x,y,1);
linear_curve = polyval(coefs,x);
plot(x,y,'ko',x,linear_curve)
xlabel('X')
ylabel('Y')
title('Random Linear plot of X-Y Vectors') 