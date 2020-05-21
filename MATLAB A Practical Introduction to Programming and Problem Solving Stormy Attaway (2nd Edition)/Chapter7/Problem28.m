% Problem 28 MATLAB script

% This script creates two strings that consist of a 
% letter, blank space then a number. Then the numbers are
% extracted and added.

% Initialize the two strings
v1 = sprintf('R %0.1f', 14.3)
v2 = sprintf('R %0.1f', 9.6)

% Extract the numbers and convert them to number types
num1 = str2num(v1(3:end))
num2 = str2num(v2(3:end))

% Add the numbers
total = num1 + num2