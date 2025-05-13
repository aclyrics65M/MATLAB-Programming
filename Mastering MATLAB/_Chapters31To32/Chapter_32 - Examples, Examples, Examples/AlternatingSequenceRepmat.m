% MATLAB File: AlternatingSequenceRepmat.m

%% Alternating Sequence repmat approach.

K = 3; % chosen value
m = 4; % number of rows
n = 5; % number of columns

% function ceil rounds up to next integer
mrep = ceil(m/2); % number of times to replicate rows
nrep = ceil(n/2); % number of times to replicate columns

out = repmat([K -K; -K K],mrep,nrep); % replicate
out = out(1:m,1:n); % eliminate any extra rows and columns

out % display results