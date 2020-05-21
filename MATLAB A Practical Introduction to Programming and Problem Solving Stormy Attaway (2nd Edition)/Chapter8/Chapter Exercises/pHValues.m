% MATLAB Script
% Chapter 8 Problem 18

% pH Values

% Create a vector of structures to store solution
% names and their pH values

phvals(2) = struct('solname', 'water', 'ph', 7);
phvals(1) = struct('solname', 'coffee', 'ph', 5);

new = addAcidity(phvals)