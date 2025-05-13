% MATLAB Script: CityTemperaturesMonth.m

% Define variable temps.
% Variable temps includes daily high temperature (in Celsius) of three
% cities over a 31-day month period.
temps = [12 8 18;
         15 9 22;
         12 5 19;
         14 8 23;
         12 6 22;
         11 9 19;
         15 9 15;
         8 10 20;
         19 7 18;
         12 7 18;
         14 10 19;
         11 8 17;
         9 7 23;
         8 8 19;
         15 8 18;
         8 9 20;
         10 7 17;
         12 7 22;
         9 8 19;
         12 8 21;
         12 8 20;
         10 9 17;
         13 12 18;
         9 10 20;
         10 6 22;
         14 7 21;
         12 5 22;
         13 7 18;
         15 10 23;
         13 11 24;
         12 12 22];

% Display the temps variable data
temps

d = 1:31; % number the days of the month

% Plot the temperatures
plot(d,temps);
xlabel('Day of Month');
ylabel('Temperature (Celsius)');
title('Figure 17.1: Daily High Temperatures in Three Cities');

% Calculate the average values
avg_temp = mean(temps)

% Calculate the overall average temperature of the three cities
avg_avg = mean(avg_temp)

% Specifying the dimension to work on:
avg_temp = mean(temps,1) % same as above, work down the rows

avg_tempr = mean(temps,2) % compute means across columns

% If temps were n-dimensional, the mean and other statistical functions
% could be used along any dimension, as in the following example:

temps2 = temps+round(2*rand(size(temps))-1);
temps3 = cat(3,temps,temps2);

size(temps3)

mean(temps3) % Same as mean(temps3,1)

squeeze(mean(temps3))' % squeeze to two dimensions

reshape(mean(temps3),3,2)' % alternate squeeze

mean(temps3,3)