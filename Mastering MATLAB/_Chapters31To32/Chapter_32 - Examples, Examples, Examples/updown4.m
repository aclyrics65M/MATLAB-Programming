% MATLAB File: updown4.m
% up-down algorithm

Nums = 25:50;  % numbers to test
N = Nums;                  % duplicate numbers
Counts = zeros(size(N));   % preallocate array

not1 = N>1;                     % True for numbers greater than one

while any(not1)

    odd = rem(N,2)~=0;          % True for odd values

    odd_not1 = odd & not1;      % True for odd values greater than one
    even_not1 = ~odd & not1;    % True for even values greater than one

    N(even_not1) = N(even_not1)/2;     % Process evens
    Counts(even_not1) = Counts(even_not1) + 1;

    N(odd_not1) = (3*N(odd_not1)+1)/2; % Process odds
    Counts(odd_not1) = Counts(odd_not1) + 2;

    not1 = N>1;               % Find remaining numbers not converged
end
results=[Nums' Counts']