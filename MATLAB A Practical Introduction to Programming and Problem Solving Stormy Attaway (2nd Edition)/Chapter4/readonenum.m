% readonenum.m MATLAB file

% Loop until the user enters a positive number
 input_num = input('Enter a positive number: ');
 while input_num < 0
     input_num = input('Invalid! Enter a positive number: ');
 end
 fprintf('Thanks, you entered a %.1f\n', input_num);