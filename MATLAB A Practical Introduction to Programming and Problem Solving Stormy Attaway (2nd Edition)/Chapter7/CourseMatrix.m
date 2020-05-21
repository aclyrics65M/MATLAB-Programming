% CourseMatrix.m MATLAB script

% Preallocate the matrix with d's
Course_matrix = char(100*ones(4,5));

for i = 1:4
    % Construct a string message to display
    msg = sprintf('Enter course number in the form CS101 %d: ',i);
    str = input(msg,'s');
    % Add the course to the character matrix
    Course_matrix(i,:) = str;
end

% Display the course matrix
disp(Course_matrix);