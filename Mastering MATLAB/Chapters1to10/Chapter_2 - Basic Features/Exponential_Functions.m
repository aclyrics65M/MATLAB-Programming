% MATLAB Program: Exponential_Functions.m

% List of Exponential functions and their results
num = input('Enter the value of num: ');
n = input('Enter the value of n: ');
fprintf('\n'); % Blank space

% Power (^) function
Power = num^n;
fprintf('The %0.2fth power value is %5.4f\n', n, Power);

% Exponential (exp) function
exponential = exp(num);
fprintf('The exponential value is %5.4f\n', exponential);

% Exponential minus (expml) function
exponential_minus = expm1(num);
fprintf('The exponential minus value is %5.4f\n', exponential_minus);

% Natural Logarithm function
natural_log = log(num);
fprintf('The natural logarithm value is %5.4f\n', natural_log);

% Base 10 Logarithm function
base_ten_log = log10(num);
fprintf('The base 10 logarithm value is %5.4f\n', base_ten_log);

% Natural Logarithm of (x + 1) function
natural_log_x_plus_one = log1p(num);
fprintf('The natural logarithm of (x + 1) value is %5.4f\n', natural_log_x_plus_one); 

% Base 2 Logarithm and Floating-Point number dissection function
base_two_log = log2(num);
fprintf('The base 2 logarithm value is %5.4f\n', base_two_log);

% Nthroot function of real numbers
nth_root = nthroot(num, n);
fprintf('The %0.2fth root value is %5.4f\n', n, nth_root);

% Base 2 power and floating-point number scaling
power_two_value = pow2(num);
fprintf('The base 2 power value is %5.4f\n', power_two_value);

% Natural Logarithm limited to real nonnegative values
limited_logarithm_real_value = reallog(num);
fprintf('The limited natural logarithm real value is %5.4f\n', limited_logarithm_real_value);

% Power limited to real-valued arguments
real_power_value = realpow(num,n);
fprintf('The limited power real value is %5.4f\n', real_power_value);

% Real Squareroot limited to real values
real_square_root = realsqrt(num);
fprintf('The limited square root real value is %5.4f\n', real_square_root);

% Square root function
square_root = sqrt(num);
fprintf('The square root value is %5.4f\n', square_root);

% Next higher power of 2
next_higher_power_two = nextpow2(num);
fprintf('The next higher power of 2 value is %5.4f\n', next_higher_power_two);








