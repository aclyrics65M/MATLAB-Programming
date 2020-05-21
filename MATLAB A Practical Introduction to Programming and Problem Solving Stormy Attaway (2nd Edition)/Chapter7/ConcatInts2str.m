function str = ConcatInts2str

% Minimum and Maximum values
min = 10;
max = 30;

% Create two random integers between 10 and 30
number1 = randi([min,max]);
number2 = randi([min,max]);

str = sprintf('%d%d',number1,number2);

end