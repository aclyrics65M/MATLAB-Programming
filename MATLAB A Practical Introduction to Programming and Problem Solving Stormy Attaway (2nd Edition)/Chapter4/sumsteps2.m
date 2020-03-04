% function sumsteps2 that calculates and returns the sum
% of 1 to n in steps of 2

function [totalSum] = sumsteps2(N)

% sumsteps2 adds the odd numbers from 1 to N.
% Format: sumsteps2(N)
% Returns a number
% Initialize the running sum

totalSum = 0;

for m = 1:2:N
    totalSum = totalSum + m;
end
end
