% MATLAB program: ArraySearching.m

% Array Searching Functions

% Array X
X = [1:10]

% find(x)
% Returns single indices of the array X, where its elements are nonzero or
% True
i = find(X)

% [r,c] = find(X)
% Returns row and column subscripts of the array X, where its elements are
% nonzero or True
[r,c] = find(X)

% find(X,n) or find(X,n,'first')
% Starting at the beginning of the array X, returns up to n indices, whree
% X is nonzero or True
find(X,4)
find(X,4,'first')

% find(X,n,'last')
% Starting at the end of the array X, returns up to n indices, where X is
% nonzero or True
find(X,4,'last')