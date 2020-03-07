% Chapter 3 Problem 30
% This script is known as areaMenu with Switch Statements

% Displaying the Menu with Switch

fprintf('Menu\n');
fprintf('1. Cylinder\n');
fprintf('2. Circle\n');
fprintf('3. Rectangle\n');
fprintf('\n');
num = input('Please choose one: ');

%Switch Scenarios

switch num
    
    case 1
        radius1 = input('Enter the radius of the cylinder: ');
        height1 = input('Enter the height of the cylinder: ');
        SA = (2*pi*(radius1^2)) + (2*pi*radius1*height1);
        fprintf('The area is %0.2f\n',SA)
        
    case 2
        radius2 = input('Enter the radius of the circle: ');
        area = pi*(radius2^2);
        fprintf('The area is %0.2f\n',area)
        
    case 3
        length = input('Enter the length of the rectangle: ');
        width  = input('Enter the width of the rectangle: ');
        Area = length * width;
        fprintf('The area is %0.2f\n',Area)
        
    otherwise
        disp('Please follow directions next time!')
        
end