% MATLAB Script
% Chapter 12 Problem 1

% Matrices A, B, and C
A = [1 4; 3 2];
B = [2 1 3; 1 5 6; 3 6 0];
C = [3 2 5; 4 1 2];

% Transpose operations
A_Transpose = transpose(A);
B_Transpose = transpose(B);
C_Transpose = transpose(C);

% Isequal operations
A_Truth = isequal(A,A_Transpose);
B_Truth = isequal(B,B_Transpose);
C_Truth = isequal(C,C_Transpose);

% Trace operations
Trace_A = trace(A);
Trace_B = trace(B);

% Multiplication operations
Result_1 = 3 * A;
Result_2 = A * C;
Result_3 = C * B;
