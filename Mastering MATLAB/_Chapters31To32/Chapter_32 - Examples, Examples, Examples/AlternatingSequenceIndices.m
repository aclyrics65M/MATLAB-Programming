% MATLAB File: AlternatingSequencesIndices.m

%% Alternating Sequence indices approach.

K = 2; % chosen value
m = 4; % number of rows
n = 5; % number of columns

% create m-by-n matrices of row and column indices
[NN,MM] = meshgrid(1:n,1:m);

% sum of column indices gives exponent
out = K*(-1).^rem(MM+NN,2);

out % display results