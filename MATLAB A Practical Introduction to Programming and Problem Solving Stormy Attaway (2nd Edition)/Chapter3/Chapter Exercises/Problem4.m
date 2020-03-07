% Chapter 3 Problem 4
% This script calculates the volume of a pyramid

disp('This program will calculate the volume of a pyramid.');

% Inputting the Length of the pyramid
length = input('Enter the length of the base: ');
Quest1 = input('Is that i or c? ','s');
if Quest1 == 'c'
    length = length / 2.54;
elseif Quest1 == 'i'
    disp('Continue onward!');
end

% Inputting the Width of the pyramid
width = input('Enter the width of the base: ');
Quest2 = input('Is that i or c? ','s');
if Quest2 == 'c'
    width = width / 2.54;
elseif Quest2 == 'i'
    disp('Continue onward!');
end

% Inputting the Height of the pyramid
height = input('Enter the height: ');
Quest3 = input('Is that i or c? ','s');
if Quest3 == 'c'
    height = height / 2.54;
elseif Quest3 == 'i'
    disp('Continue onward!');
end

% Calculating the Volume of the pyramid
Vol = (1/3) * (length * width) * height;
fprintf('The volume of the pyramid is %0.3f cubic inches\n',Vol)