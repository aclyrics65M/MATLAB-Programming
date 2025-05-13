% MATLAB Script: datefunctions.m

% Define variables d and w (days and weeks)
[d,w] = weekday(728647)

[d,w] = weekday('21-Dec-1994')

eomday(2012,2) % divisible by 4 is a leap year
eomday(1900,2) % divisible by 100 not a leap year
eomday(2000,2) % divisible by 400 is a leap year