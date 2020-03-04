% RandomNumber.m matlab file

% Generate a random integer in the range from 2 to 5
lower = 2;
upper = 5;

randomNumber = lower + (upper - lower)*rand(1,1);

totalSum = 0;

for i = 1:randomNumber
   input_number = input('Enter the number: '); 
   totalSum = totalSum + input_number; 
end

% Final display
fprintf('The sum is %0.1f for the numbers you have entered.\n', totalSum);