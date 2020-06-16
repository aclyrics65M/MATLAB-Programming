function Minv = myrrefinv(M)
% MYRREFINV Receives a square matrix and finds the inverse
% using the matrix augmented with I and the function rref.
% The function inv is not used.
% Format of call is: myrrefeinv( M )
% Returns a matrix

[r c] = size(M); % Size of matrix M

% Augment M with the identity matrix and send that matrix to the
% function rref
A = rref([M eye(size(M))]);

% The inverse of M is on the left half of matrix A
Minv = A(:,c+1:end);

end