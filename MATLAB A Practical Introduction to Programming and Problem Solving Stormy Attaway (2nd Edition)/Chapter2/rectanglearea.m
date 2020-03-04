% Area of rectangle by user input
% rectanglearea.m

% Prompt user for the length and width of rectangle
length = input('Enter the length of the rectangle: ');
width = input('Enter the width of the rectangle: ');
disp(' ') % Blank space

% Calculate and display the area
rectangle_area = length * width;

% Printing out the area of the rectangle with fprintf
fprintf('The area of the rectangle is %5.2f\n', rectangle_area)
