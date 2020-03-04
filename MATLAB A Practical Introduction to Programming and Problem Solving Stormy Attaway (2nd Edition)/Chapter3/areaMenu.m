% Script called areaMenu that will print a list that consists of:
% A "cylinder", "circle", and "rectangle"

disp('Menu');
disp('1. Cylinder');
disp('2. Circle');
disp('3. Rectangle');

selection = input('Please choose one: ');

% Area of possible choices (1, 2, or 3)
possibleChoices = [1, 2, 3];

while (selection ~= possibleChoices)
   disp('Error! Pick 1, 2, or 3');
   selection = input('Please choose one: ');
end

if selection == 1
    radiusCylinder = input('Enter the radius of the cylinder: ');
    areaCylinder = pi*(radiusCylinder^2);
    fprintf('The area is %0.2f\n', areaCylinder);
    
elseif selection == 2
    radiusCircle = input('Enter the radius of the circle: ');
    areaCircle = pi*(radiusCircle^2);
    fprintf('The area is %0.2f\n', areaCircle);
    
elseif selection == 3
    length = input('Enter the length of the rectangle: ');
    width = input('Enter the width of the rectangle: ');
    areaRectangle = length * width;
    fprintf('The area is %0.2f\n', areaRectangle);
    
end

