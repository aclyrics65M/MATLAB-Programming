function string = FirstLastName

% Chapter 7 Problem 4 asks the user for a first and last name and
% returns a string in the form 'last,first'
% Format of call: Ch07E04
% Returns a string
% Asks the user for input
first = input('Enter a first name: ','s');
last = input('Enter a last name: ','s');

% Concatenate the names in the form 'last, first'
string = [last, ', ', first];

end