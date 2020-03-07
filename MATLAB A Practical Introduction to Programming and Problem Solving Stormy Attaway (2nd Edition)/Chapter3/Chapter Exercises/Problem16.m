% Chapter 3 Problem 16

% This script asks the user for a temperature in degree Celsius
% And then asks for conversion into fahrenheit or kelvin

C = input('Enter the temp in degrees C: ');

Q = input('Do you want K or F? ','s');

if Q == 'K'
    K = C + 273.15;
    fprintf('The temp in degrees K is %0.2f\n',K)
elseif Q == 'F'
    F = ((9/5)*C) + 32;
    fprintf('The temp in degrees F is %0.2f\n',F)
else
    disp('Error! Invalid input!');
end