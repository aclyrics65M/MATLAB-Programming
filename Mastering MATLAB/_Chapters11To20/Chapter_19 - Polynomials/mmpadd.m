function p = mmpadd(a,b)
%MMPADD Polynomial Addition.
% MMPADD(A,B) adds the polynomials A and B.

if nargin<2
    error('Not Enough Input Arguments.')
end

a = reshape(a,1,[]);   % make sure inputs are polynomial row vectors
b = b(:).';            % this makes a row as well

na = length(a); % find lengths of a and b
nb = length(b);

p = [zeros(1,nb-na) a] + [zeros(1,na-nb) b]; % pad with zeros as necessary