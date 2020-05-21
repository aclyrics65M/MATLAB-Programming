% MATLAB script
% Chapter 8 Problem 2

% Create the following cell array
ca = {'abc', 11, 3:2:9, zeros(2)};

% Use the reshape function to make it a 2x2 matrix.
reshaped_matrix = reshape(ca, 2, 2);

% Display the newly reshaped matrix
disp(reshaped_matrix);