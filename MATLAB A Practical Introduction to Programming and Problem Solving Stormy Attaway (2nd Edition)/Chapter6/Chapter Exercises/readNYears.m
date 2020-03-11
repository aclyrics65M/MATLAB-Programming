function [ N ] = readNYears
% NUMYEARS Prompts the user for the value of n.
% Format: [ N ] = readNYears
% Function error checks to ensure that N is a positive integer

% Prompt the user for N, the number of years
N = input('Enter a positive integer for n: ');

% Error check the input, make sure that N is a positive integer.
% Continue looping until the user enters a positive integer for N.
while N ~= fix(N) | N < 0
    N = input('Please try again, enter a positive integer for n: ');
end

end