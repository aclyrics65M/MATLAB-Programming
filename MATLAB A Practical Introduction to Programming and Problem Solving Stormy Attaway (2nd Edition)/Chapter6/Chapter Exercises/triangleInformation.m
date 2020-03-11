% This script computes the area of a triangle. The script
% prompts the user for the coordinates of a triangle's 3 vertices.
% Ask the user for 3 vertices of a triangle. Store the (x,y) coordinates
% of the vertices in a matrix Points.
% Preallocate the matrix.

Points = zeros(3,2);

for j = 1:3
   fprintf('Enter the coordinates for vertex %d\n',j)
   Points(j,1) = input('Enter x coordinate: ');
   Points(j,2) = input('Enter y coordinate: ');
   fprintf('\n')
end

% Calculate the area of the triangle
A = triarea(Points);

% Display the result
fprintf('The area of the triangle is %0.2f\n',A)