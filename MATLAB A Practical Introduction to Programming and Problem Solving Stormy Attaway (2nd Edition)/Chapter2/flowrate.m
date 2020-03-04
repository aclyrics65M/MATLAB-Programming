% Flowrate.m

% This script prompts the user to enter in the flow rate in cubic meters
% and will then print the equivalent flow rate in cubic feet per second.

flow_rate = input('Enter the flow in m^3/s: ');

% Conversion
converted_flow_rate = flow_rate / 0.028;

% Print out the results
fprintf('A flow rate of %5.3f meters per sec\n', flow_rate);
fprintf('is equivalent to %5.3f feet per sec\n', converted_flow_rate);