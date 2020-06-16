% MATLAB Script
% Chapter 12 Problem 19

% 2 x 2 System of Equations
% -3x1 + x2 = -4
% -6x1 + 2x2 = 4

% Equation 1: y = 3x - 4
% Equation 2: y = 3x + 2

x = -5:5;
y1 = 3*x - 4;
y2 = 3*x + 2;
plot(x,y1,x,y2)
axis([-2 5 -4 6])
xlabel('x')
ylabel('y')
title('Visualize 2 x 2 System of Equations')

% Find the determinant
A = [-3 1; -6 2];
Det_Value = det(A)
disp('There are no solutions to the set of linear equations');