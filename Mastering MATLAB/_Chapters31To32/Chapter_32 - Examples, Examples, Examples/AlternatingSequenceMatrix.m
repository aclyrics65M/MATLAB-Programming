% MATLAB File: AlternatingSequenceMatrix.m

%% Alternating Sequence For loop approach

K = 1; % chosen value
m = 4; % number of rows
n = 5; % number of columns

out = zeros(m,n); % preallocate memory for results

for i = 1:m % loop over rows

    for j = 1:n % loop over the columns

        oddrow = rem(i,2)==1; % true if in odd numbered row
        oddcol = rem(j,2)==1; % true if in odd numbered column

        if (oddrow && ~oddcol) || ~oddrow && oddcol
            out(i,j) = -K;
        else
            out(i,j) = K;
        end

    end

end

out % display results