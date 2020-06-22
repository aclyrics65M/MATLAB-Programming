% MATLAB Script
% Chapter 15 Problem 33

% Using the symoblic function int, find the indefinite integral of the
% function 4x^2 + 3, and the definite integral of this function from x = -1
% to x = 3. Also, approximate this using the trapz function.

% Find integrals
x = sym('x');
f = 4*x^2 + 3;

% Indefinite integral
int(f)

% Definite integral from x = -1 to x = 3
int(f,-1,3)

% Approximation
f = sym2poly(f);
x = -1:0.1:3;
y = polyval(f,x);