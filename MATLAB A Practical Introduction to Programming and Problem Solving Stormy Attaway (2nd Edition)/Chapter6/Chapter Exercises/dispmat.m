function dispmat(M)
% DISPMAT displays an input matrix in table format
% Format of the call is: dispmat(M)
% Returns nothing

[rows columns] = size(M);

% Printing out the matrix
for i = 1:rows
    for j = 1:columns
        fprintf('%4d', M(i,j))
    end
fprintf('\n');
end

end