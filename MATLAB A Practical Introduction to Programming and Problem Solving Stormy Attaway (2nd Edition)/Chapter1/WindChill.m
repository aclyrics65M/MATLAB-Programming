% This is known as the WCF matlab file

% Prompt user to input the values for T and V

V = input('Enter the speed in miles per hour: ');

T = input('Enter the temperature in fahrenheit: ');

% Calculate the WCF (Wind Chill Factor)
WCF = 35.7 + (0.6 * T) - 35.7*(V^0.16) + 0.43*T*(V^0.16);

display(WCF)