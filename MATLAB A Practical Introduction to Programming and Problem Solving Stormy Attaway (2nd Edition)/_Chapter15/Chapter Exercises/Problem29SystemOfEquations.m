% MATLAB Script
% Chapter 15 Problem 29

% System of Equations:
% 4x1 - x2 + 3x4 = 10
% -2x1 + 3x2 + x3 - 5x4 = -3
% x1 + x2 - x3 + 2x4 = 2
% 3x1 + 2x2 - 4x3 = 4

A = [4 -1 0 3; -2 3 1 -5; 1 1 -1 2; 3 2 -4 0];
b = [10 -3 2 4]';
x = inv(A)*b