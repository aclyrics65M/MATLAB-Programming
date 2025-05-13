% MATLAB program: ArrayAddressing.m

% Array Addressing Function

% Define array A
A = [1 2 3; 4 5 6; 7 8 9];
r = 2;
c = 3;

% Vector k
k = [3 4 5];

% Logical array x
x = [1 1 0 0 1];
x = logical(x);

% A(r,c)
% Addresses a subarray within A defined by the index vector of desired rows
% in r and an index vector of desired columns in c
A(r,c)

% A(r,:)
% Addresses a subarray within A defined by the index vector of desired rows
% in r and all columns
A(r,:)

% A(:,c)
% Addresses a subarray within A defined by all rows and the index vector of
% desired columns in c
A(:,c)


% A(:)
% Addresses all elements of A as a column vector taken column by column. If
% A(:) appears on the left-hand side of the equal sign, it means to fill A
% with elements from the right hand-side of the equal sign without changing
% A's shape.
A(:)

% A(k)
% Addresses a subarray within A defined by the single-index vector k, as if
% A were the column vector A(:)
A(k)

% A(x) 
% Addresses a subarray within A defined by the logical array x. Note that x
% should be the same size as A. If x is shorter than A, the missing values
% in x are assumed to be False. If x is longer than A, all extra elements
% in x must be False.
A(x)
