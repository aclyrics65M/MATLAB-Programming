% MATLAB script
% Chapter 8 Problem 13

% Complex number (a + bi) in mathematics.

% Prompt the user separately for the real and imaginary parts of
% a complex number, store in a structure, and print it.

compnum.real = input('Enter the real part: ');
compnum.imag = input('Enter the imaginary part: ');

% Display using fprintf
fprintf('The complex number is %0.1f + %0.1fi\n', compnum.real, compnum.imag);