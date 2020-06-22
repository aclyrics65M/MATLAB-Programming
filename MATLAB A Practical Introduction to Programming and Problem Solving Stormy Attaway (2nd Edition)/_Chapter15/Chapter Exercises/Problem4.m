% MATLAB Script
% Chapter 15 Problem 4

% polynomial row vector
pol = [3 6 5];
root1 = roots(pol)
figure;
ezplot(poly2sym(pol))

% Change 5 to -7
pol2 = [3 6 -7];
root2 = roots(pol2)
figure;
ezplot(poly2sym(pol2))