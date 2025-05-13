% MATLAB File: VandermondeMatrix.m

%% construct a Vandermonde matrix, approach 1

x = (1:6)';         % column vector for input data
m = 5;              % highest power to compute
V = [];

for i = 1:m+1       % build V column by column
    V = [V x.^(m+1-i)];
end

%% construct a Vandermonde matrix, approach 2

x = (1:6)';         % column vector for input data
m = 5;              % highest power to compute
n = length(x);      % number of elements in x
V = ones(n,m+1);    % preallocate memory for result

for i = 0:m-1       % build V column by column
    V(:,i+1) = x.^(m-i);
end

%% construct a Vandermonde matrix, approach 3

x = (1:6)';         % column vector for input data
m = 5;              % highest power to compute
n = length(x);      % number of elements in x
V = ones(n,m+1);    % preallocate memory for result

for i = m:-1:1      % build V column by column
    V(:,i) = x.*V(:,i+1);
end


%% construct a Vandermonde matrix, approach 4

x = (1:6)';         % column vector for input data
m = 5;              % highest power to compute
n = length(x);      % number of elements in x

p = m:-1:0;         % column powers

V = repmat(x,1,m+1).^repmat(p,n,1);

%% construct a Vandermonde matrix, approach 5

x = (1:6)';         % column vector for input data
m = 5;              % highest power to compute
n = length(x);      % number of elements in x

V = ones(n,m+1);    % preallocate memory for result

V(:,2:end) = cumprod(repmat(x,1,m),2);

V = V(:,m+1:-1:1);  % reverse column order

%% construct a Vandermonde matrix, approach 6

x = (1:6)';         % column vector for input data
m = 5;              % highest power to compute
n = length(x);      % number of elements in x

V = ones(n,m+1);    % preallocate memory for result

V(:,2:end) = cumprod(x(:,ones(1,m)),2); % avoid call to repmat

V = V(:,m+1:-1:1);  % reverse column order