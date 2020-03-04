% Chapter 4 Problem 13. 
% Vector of 5 random integers

% Generate the random vector
lower = -10;
upper = 10;

A = round(lower + (upper - lower).*rand(1,1));
B = round(lower + (upper - lower).*rand(1,1));
C = round(lower + (upper - lower).*rand(1,1));
D = round(lower + (upper - lower).*rand(1,1));
E = round(lower + (upper - lower).*rand(1,1));

% Place all the five elements in the vector
vector = [A B C D E];

new_vector = vector - 3;

number_positive = 0;

for i = 1:numel(new_vector)
   element = new_vector(i);
   
   if(element > 0)
       number_positive = number_positive + 1;
   end
   
end

% Initialize absolute vector
absolute_vector = [0 0 0 0 0];

% Obtain the absolute value of each element
for j = 1:numel(new_vector)
   absolute_vector(j) = abs(new_vector(j)); 
end

% Obtain the maximum value
maximum_element = max(absolute_vector);

% Print out the final results
display(vector);
display(new_vector);
fprintf('The number of positives is %d\n', number_positive);
display(absolute_vector);
fprintf('The maximum element is %0.1f\n', maximum_element);




