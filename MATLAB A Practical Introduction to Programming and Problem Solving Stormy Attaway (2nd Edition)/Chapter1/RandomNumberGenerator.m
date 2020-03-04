% Random number generator
% This matlab file generates random files as follows

% Generating Random Numbers:
% Real number in the range from 0 to 1
real_number_01 = rand;

% Real number in the range from 0 to 20
real_number_20 = rand*20;

% Real number in the range from 20 to 50
% a=0.12
% b=0.45
% out=a+(b-a)*rand;
lower = 20;
upper = 50;
real_number_20_50 = lower + (upper - lower)*rand;

% Integer in the range from 0 to 10
integer_number = round(rand * 10);

% Integer in the range from 0 to 11
integer_number_11 = round(rand * 11);

% Integer in the range from 50 to 100
low = 50;
high = 100;
integer_number_50_100 = round(rand * (high - low) + low);

% Display the results
disp(real_number_01)
disp(real_number_20)
disp(real_number_20_50)
disp(integer_number)
disp(integer_number_11)
disp(integer_number_50_100)





