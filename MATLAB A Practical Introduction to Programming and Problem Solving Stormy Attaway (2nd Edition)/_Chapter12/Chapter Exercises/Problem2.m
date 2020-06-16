% MATLAB Script
% Chapter 12 Problem 2

% Matrices A, B, and C
A = [4 1 -1; 2 3 0];
B = [1 4];
C = [2 3]';

% List of mathematical operations
%Operation_1 = A * B;
Operation_2 = B * C;
Operation_3 = C * B;
Operation_4 = B + transpose(C);

% Display the results
fprintf('Operation_2 = ');
disp(Operation_2);
fprintf('Operation_3 = \n');
disp(Operation_3);
fprintf('Operation_4 = ');
disp(Operation_4);