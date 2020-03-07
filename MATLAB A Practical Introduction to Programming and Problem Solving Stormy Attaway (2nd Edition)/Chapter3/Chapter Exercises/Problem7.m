% Chapter 3 Problem 7
% This script calculates the eccentricity of an ellipse

b = input('Enter the value of b: ');
a = input('Enter the value of a: ');

if a == 0
    disp('Error! Cannot divide by zero!')
    a = input('Enter the value of a: ');
else
    eccen = sqrt(1 - ((b/a)^2));
end

fprintf('The eccentricity of the ellipse is %0.4f\n',eccen)