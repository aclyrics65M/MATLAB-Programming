% MATLAB Script
% Chapter 12 Problem 22

% Cramer's rule states that the unknowns x are fractions of determinants.
% The numerator is found by replacing the column of coefficients of the
% unknown by constants b. 

% Matrix A and column vector B
A = [-3 2; 4 -2];
B = [-1;-2];

Matrix_1 = [-1 2; -2 -2];
Matrix_2 = [-3 -1; 4 -2];
D = det(A);

% Solutions for x1 and x2
X1 = det(Matrix_1)/D
X2 = det(Matrix_2)/D