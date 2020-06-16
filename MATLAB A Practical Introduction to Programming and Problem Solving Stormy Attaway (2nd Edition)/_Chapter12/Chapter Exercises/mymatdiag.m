function out = mymatdiag(A)
% mymatdiag function extracts the diagonal elements of a square matrix
% And if the matrix is not a square, this function returns an error message
% at the command window.
% Format of calling funciton is: mymatdiag(A)

if issquare(A)
% If the matrix A is a square matrix, the diagonal elements and put in out
[row column] = size(A);
% The matrix D is defined as below
out = ones(1,row);
    for i = 1:row
        out(i) = A(i,i);
    end
else
% If A is not a square matrix, an error message will be displayed and the
% result will be shown with an empty matrix.
fprintf('Error message: The matrix must be a square');
out = [];
end
end