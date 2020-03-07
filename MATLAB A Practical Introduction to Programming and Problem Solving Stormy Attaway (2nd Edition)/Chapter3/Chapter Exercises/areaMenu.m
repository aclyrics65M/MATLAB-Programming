% Chapter 3 Problem 29
% This script is known as areaMenu

% Displaying the Menu
disp('Menu');
disp('1. Cylinder');
disp('2. Circle');
disp('3. Rectangle');
disp('');
num = input('Please choose one: ');

if num == 1
    radius1 = input('Enter the radius of the cylinder: ');
    height1 = input('Enter the height of the cylinder: ');
    SA = (2*pi*(radius1^2)) + (2*pi*radius1*height1);
    fprintf('The area is %0.2f\n',SA)
end

if num == 2
    radius2 = input('Enter the radius of the circle: ');
    area = pi*(radius2^2);
    fprintf('The area is %0.2f\n',area)
end

if num == 3
    length = input('Enter the length of the rectangle: ');
    width  = input('Enter the width of the rectangle: ');
    Area = length * width;
    fprintf('The area is %0.2f\n',Area)
end