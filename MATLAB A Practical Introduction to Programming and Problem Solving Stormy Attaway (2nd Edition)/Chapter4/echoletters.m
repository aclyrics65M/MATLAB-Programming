% MATLAB script echoletters.m
% Chapter 4 Problem 30.

% The script prompts the user for letters of the alphabet.
% and echo prints them. The loop breaks when a non-letter
% is entered. Then the code displays the non-letter 
% character and the number of letters entered.
% Initialize the counter and the first ASCII value for a letter.

x = 65;
count = 0;

% The condition uses the fact that the ASCII values for
% the letters are continuous from 65 to 90 for the upper 
% case and 97 to 122 for the lower case.

% While loop
while( (65 <= x && x <= 90) || (97 <= x && x <= 122))
    
    c = input('Enter a letter: ', 's');
    x = int32(c);
    
    % If statement
    if( (65 <= x && x <= 90) || (97 <= x && x <= 122))
        count = count + 1;
        fprintf('Thanks you entered a %s\n', c);
    else
        fprintf('%s is not a letter\n', c);
    end
end

% Final display
fprintf('You entered %d letters\n', count);

