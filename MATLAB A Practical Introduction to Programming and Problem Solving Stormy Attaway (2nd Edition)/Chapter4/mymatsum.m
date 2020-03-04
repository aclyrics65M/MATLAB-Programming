% mymatsum.m MATLAB function

function outsum = mymatsum(mat)
% mymatsum returns the overall sum of the elements
% in a matrix
% Format: mymatsum(matrix)

[row col] = size(mat);
outsum = 0;

% The ouer loop is over the rows
for i = 1:row
    for j = 1:col
        outsum = outsum + mat(i,j);
    end
end
end