% Chapter 3 Problem 21
% Reynolds Number
% This script asks the user to input the Reynolds number Re

Re = input('Enter the Reynolds number (Re): ');

if Re <= 2300
    disp('The flow is in laminar region');
elseif Re <= 4000
    disp('The flow is in transition region');
else
    disp('The flow is in turbulent region');
end