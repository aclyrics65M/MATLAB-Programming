% MATLAB Script
% Chapter 15 Problem 2

% Find roots of the equation f(x) = 0 for the following function:
% f(x) = 3x^2 - 2x - 5

x = sym('x');
eqn = 3*x^2 - 2*x - 5;
root = solve(eqn)
ezplot(eqn,[-3 3])