% Prompt the user for the length and width of a rectangle,
% call a function to calculate and return the perimeter
% and area, and print the result
% For simplicity it ignores units and error-checking

length = input('Please enter the length of the rectangle: ');
width = input('Please enter the width of the rectangle: ');
[perim area] = perimarea(length,width);
fprintf('For a rectangle with a length of %0.1f and a', length)
fprintf(' width of %0.1f,\nthe perimeter is %0.1f,', width, perim)
fprintf(' and the area is %0.1f\n',area)