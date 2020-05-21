% MATLAB Script
% Chapter 8 Problem 5

number = input('Enter the number of strings to input: ');

% For-loop
for i = 1:number
    string = input('Enter a string: ', 's');
    strcell{i} = string;
end

strcell
