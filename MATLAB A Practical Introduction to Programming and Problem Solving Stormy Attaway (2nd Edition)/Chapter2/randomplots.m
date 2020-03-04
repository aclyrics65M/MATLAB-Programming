% randomplots

% This script experiments with random plots

% Prompt user for number of x values
number_x = input('Enter the number of x values: ');

% Y vector with random integers in the 1 to 100 range
min = 1;
max = 100;

y_vector = round(rand(1,number_x)*(max - min) + min);
x_vector = 1:length(y_vector);

% Plot the random values
plot(x_vector,y_vector,'bo')
xlabel('X Axis')
ylabel('Y Axis')
title('Randomized Plots')
