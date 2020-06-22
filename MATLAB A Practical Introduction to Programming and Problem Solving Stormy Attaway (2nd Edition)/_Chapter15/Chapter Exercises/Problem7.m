% MATLAB Script
% Chapter 15 Problem 7

time = 1:7;
voltage = [1.1 1.9 3.3 3.4 3.1 3.3 7.1];

% Obtain the coefficients
coefs = polyfit(time,voltage,1);
linear_curve = polyval(coefs,time);
plot(time,voltage,'ko',time,linear_curve,'b')
xlabel('Time')
ylabel('Voltage')
title('Plot of Voltage over Time in a Circuit')
grid on

% Determine what time the voltage would be 5
time5 = (5 - coefs(2))/coefs(1);
fprintf('The voltage will be 5 at time = %0.4f\n',time5)

% Checking the results
A = polyval(coefs,time5);
fprintf('At time %0.4f the voltage is = %0.2f\n',time5,A)