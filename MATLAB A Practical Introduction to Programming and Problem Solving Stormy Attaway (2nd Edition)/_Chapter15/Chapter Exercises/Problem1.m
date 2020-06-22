% MATLAB Script
% Chapter 15 Problem 1

% Express polynomials as row vectors of coefficients:
% 2x^3 - 3x^2 + x + 5
% 3x^4 + x^2 + 2x - 4

poly1 = [2 -3 1 5];
row_vector1 = poly2sym(poly1)

poly2 = [3 0 1 2 -4];
row_vector2 = poly2sym(poly2)