% MATLAB File: plusminus.m

function out = plusminus(K,m,n)
%PLUSMINUS Array of Alternating Plus and Minus K Values.
% PLUSMINUS(K,N) returns an N-by-N array.
%
% PLUSMINUS(K,M,N) or
% PLUSMINUS(k,[M N]) return an M-by-N array.
% 
% PLUSMINUS(K,size(A)) returns an array
% the same size as matrix A
%
% For example: PLUSMINUS(8,3,5)
% produces the matrix
%                       [ 8 -8 8 -8 8
%                        -8  8 -8 8 -8
%                         8 -8 8 -8 8]

% parse and error check inputs

if nargin<2
    error('At least 2 input arguments are required.')
elseif nargin==2 && isscalar(m) % PLUSMINUS(K,N)
    n = m;
elseif nargin==2 && numel(m)==2 % PLUSMINUS(K,[M N])
                                % or PLUSMINUS(K,size(A))
    n = m(2);
    m = m(1);
elseif nargin==2 && numel(m)~=2
    error('Second argument must be a scalar or two element vector.')
end

if numel(m)~=1 || fix(m)~=m || m<1
    error('M must be a positive scalar.')
end

if numel(n)~=1 || fix(n)~=n || n<1
    error('M must be a positive scalar.')
end

if ~isscalar(K) || ~isnumeric(K)
    error('K must be a numeric scalar.')
end

% implement the algorithm
out = repmat([K -K; -K K], ceil(m/2),ceil(n/2));
out = out(1:m,1:n);