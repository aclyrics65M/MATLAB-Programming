function out = checkifdiag(A)
% Function checkifdiag evaluates to see whether the matrix is a diagonal
% one. If it is a value of one is returned. Otherwise a value of 0 is
% returned if the matrix is not diagonal

[r c] = size(A); % Obtain the r and c values of matrix A
out = false;

for i = 1:r
    for j = 1:c
        if i~=j
            if (A(i,j) ~= 0)
                out = false;
            end
        end
    end
end
end