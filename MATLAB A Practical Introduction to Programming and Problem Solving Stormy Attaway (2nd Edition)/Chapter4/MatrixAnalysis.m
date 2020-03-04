% Chapter 4 Problem 16

% Create a 3x5 matrix. Perform each of the following using loops
% (with if statements if necessary):

% Find the maximum value in each column
% Find the maximum value in each row
% Find the maximum value in the entire matrix

% First create a 3x5 matrix of random integers from 1 to 100.
Number_of_Rows    = 3;
Number_of_Columns = 5;
matrix = randi(100, Number_of_Rows, Number_of_Columns)

% First for-loop
% Find the maximum value in each column
for i = 1:Number_of_Columns
    max = matrix(1,i);
    for j = 1:Number_of_Rows
        if matrix(j,i) > max
           max = matrix(j,i); 
        end
    end
    % Display the maximum value in the column
    fprintf('Column %d maximum value is: %d\n', i, max);
end

% Second for-loop
% Find the maximum value in each row
for j = 1:Number_of_Rows
    max = matrix(j,1);
    for k = 1:Number_of_Columns
        if matrix(j,k) > max
            max = matrix(j,k);
        end
    end
    fprintf('Row %d maximum value is: %d\n', j, max);
end

% Third for-loop
% Find the maximum value in the entire matrix
maximum_value = matrix(1,1);
row_location = 1;
column_location = 1;
for a = 1:3
   for b = 1:5
       if matrix(a,b) > maximum_value
           maximum_value = matrix(a,b);
           row_location = a;
           column_location = b;
       end
   end
end

% Final print of maximum value
fprintf('The maximum value in the matrix is: %d\n', maximum_value);
fprintf('The row location for the maximum value is: %d\n', row_location);
fprintf('The column location for the maximum value is: %d\n', column_location);
