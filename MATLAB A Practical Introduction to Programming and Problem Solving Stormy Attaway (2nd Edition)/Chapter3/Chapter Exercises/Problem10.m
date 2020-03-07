% Chapter 3 Problem 10
% This script asks the user for the pH of a solution 
% And returns whether or not it is acidic, neutral, or basic

pH = input('Enter the pH of the solution: ');

% First, error-check
if pH < 0 || pH > 14
    disp('Error! Invalid pH value entered')
elseif pH < 7
    disp('Solution is acidic.');
elseif pH == 7
    disp('Solution is neutral.');
else
    disp('Solution is basic.');
end