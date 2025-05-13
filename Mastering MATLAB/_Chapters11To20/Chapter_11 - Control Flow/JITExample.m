% MATLAB program: JITExample.m

N = 1e6;
% generate sin(x) at 1e6 points by using array mathematics
% this is often called a 'vectorized' solution.

x = linspace(0,2*pi,N);
y = sin(x);      % vectorized solution requires two lines

% redo code using JIT-acceleration
i = 0;
y = zeros(1,N);  % initialize all variables within loop
x = zeros(1,N);  % and allocate all memory

for i = 1:N              % scalar loop variable
    x(i) = 2*pi*(i-1)/N; % only built-in function calls
    y(i) = sin(x(i));
end

