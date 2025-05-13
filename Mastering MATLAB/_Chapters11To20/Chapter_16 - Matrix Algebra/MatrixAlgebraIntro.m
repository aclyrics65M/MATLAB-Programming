% MATLAB Script: MatrixAlgebraIntro.m

% Define array A and vector y
A = [1 2 3; 4 5 6; 7 8 0];
y = [366; 804; 351];

rank(A)
rank([A y])
cond(A) % close to one is best

% Calculate the value of x
% Method 1 (Multiply inverse of array A and vector y)
x = inv(A)*y % Avoid this approach if possible

% Method 2 (Use an LU factorization approach)
x = A\y % Recommended approach to solving sets of equations