% MATLAB script: randomarrays.m

a = rand(2,5); % random array
b = randn(2,5); % a different random array

isequal(a,b) % a and b are not equal

isequal(a,a) % but a is certainly equal to a

isequal(a,a(:)) % a with a as a column
