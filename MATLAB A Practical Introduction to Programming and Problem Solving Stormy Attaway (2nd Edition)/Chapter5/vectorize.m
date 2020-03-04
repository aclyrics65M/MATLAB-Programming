% Chapter 5 Problem 1.
% size function

function new_matrix = vectorize(matrix)

[row column] = size(matrix);
for i = 1:row
    for j = 1:column
        new_matrix(i,j) = matrix(i,j) * 2;
    end
end

end