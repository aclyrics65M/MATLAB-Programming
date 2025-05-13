% MATLAB Program: ArraySize.m

% Array Size Functions

% Declare Matrix A
A = [1 2 3; 4 5 6; 7 8 9];

% size(A)
% Returns a row vector s whose first element is the number of rows in A,
% and whose second element is the number of columns in A.
s = size(A)

% [r,c] = size(A)
% Returns two scalars, r and c, containing the number of rows and columns,
% respectively.
[r,c] = size(A)

% r = size(A,1)
% Returns the number of rows in A
r = size(A,1)

% c = size(A,2)
% Returns the number of columns in A
c = size(A,2)

% n = length(A)
% Returns (max(size(A)) for nonempty A,, 0 when A has either zero rows or
% zero columns and the length of A if A is a vector
n = length(A)

% n = max(size(A))
% Returns length(A) for nonempty A, and for empty A returns the length of
% any nonzero dimension of A
n = max(size(A))

% n = numel(A)
% Returns the total number of elements in A
n = numel(A)