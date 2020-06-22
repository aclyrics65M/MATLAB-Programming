% MATLAB Script
% Chapter 13 Problem 1

% Random Matrix of integers from 1 to 20
Rand_Matrix = randi([1 20],5,5);

save rand_data.mat Rand_Matrix -ascii

load rand_data.mat -ascii
Rand_Matrix

max_value = max(max(Rand_Matrix));
min_value = min(min(Rand_Matrix));

diff_value = max_value - min_value;

% Display the results
min_value
max_value
diff_value