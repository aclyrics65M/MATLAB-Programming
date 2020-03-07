% Chapter 3 Problem 23
% Script asks user for wind speed and the tropical storm is determined

windSpeed = input('Enter the windspeed in mph: ');

if windSpeed < 38
    disp('The storm is a tropical depression');
elseif windSpeed < 73
    disp('The storm is a tropical storm');
else
    disp('The storm is a hurricane');
end