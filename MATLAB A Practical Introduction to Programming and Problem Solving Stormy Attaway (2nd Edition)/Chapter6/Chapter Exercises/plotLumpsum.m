function plotLumpsum(n)
% PLOTFUNC plots the lump sum payment compounded annually.
% for the years 1 through n. The interest is fixed at 
% i = 0.05 and the principle is fixed at P = 10,000.
% The formula is S = P * (1 + i)^n
% Format: plotLumpsum(n)

% Set the interest and the principle
int = 0.05;
P = 10^4;

% The years are
Y = 1:n;
% The lump sum for each year is
S = P * (1 + int).^Y;

% Plot the lump sum vs the year and label the plot
plot(Y,S,'r-*')
xlabel('Year')
ylabel('Lump Sum S')
title('Plot of S for years 1 through n')
legend 

end