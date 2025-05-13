% MATLAB File: AlternatingSequenceOuterProduct.m

%% Alternating Sequence outer product approach.

K = 4; % chosen value
m = 4; % number of rows
n = 5; % number of columns

pm = ones(2,ceil(max(m,n)/2)); % two rows of ones
pm(2,:) = -1; % set second row to -1
% resulting pm(:) is the alternating vector [1 -1 1 -1 1...]'

% use pm array as needed to create output variable
out = K*(pm(1:m).' * pm(1:n)); % outer product: column * row = matrix

out % display results