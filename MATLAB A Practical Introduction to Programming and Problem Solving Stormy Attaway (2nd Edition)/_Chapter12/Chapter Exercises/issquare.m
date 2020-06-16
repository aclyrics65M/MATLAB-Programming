function output = issquare(array)
% Function issquare receives an array argument and will return
% logical 1 for true if it is a square matrix or logical 0 for false
% if it is not a square matrix.

[row column] = size(array);
logicalValue = false;


if row == column
    logicalValue = true; % If matrix is a square
else
    logicalValue = false; % If matrix is not a square
end

output = logicalValue;
end