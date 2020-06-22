% MATLAB Script
% Chapter 13 Problem 5

% pH level of a swimming pool.
pH = rand(1,7) + 7;

save pHlevels.dat pH -ascii

% Load the pH data from the swimming pool and analyze to make sure
% that the water is safe

load pHlevels.dat

% Calculate and display the mean and standard deviation
fprintf('The mean pH level is: %0.2f\n', mean(pHlevels));
fprintf('The standard deviation of the pH level is: %0.2f\n', std(pHlevels));