% The title of this script is simply a Doomsday Theory Calculation
% Based upon J. Richard Gott's Doomsday Theorem

% Entering the Name of the Phenomenon:
namePhenomenon = input('Please enter the name of the Phenomenon: ','s');

intYear = input('Enter the starting year of the Phenomenon: ');
curYear = input('Enter the current year of the Phenomenon: ');

% Calculating the year of demise
% N - Age of the Phenomen
N = curYear - intYear;

% Percent confidence levels
% 25 percent
a = intYear + (N/0.75);
% 50 percent
b = intYear + (N/0.50);
% 75 percent 
c = intYear + (N/0.25);
% 90 percent
d = intYear + (N/0.10);
% 95 percent
e = intYear + (N/0.05);
% 99 percent
f = intYear + (N/0.01);

