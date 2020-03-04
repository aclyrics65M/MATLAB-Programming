% expplot.m

% Problem 16. Plot exp(x) for values of x ranging
% from -2 to 2 in steps of 0.1. Place an appropriate title
% on the plot and label the axes.

x = [-2:0.1:2];
y = exp(x);

% Plotting exp(x)

plot(x,y,'LineWidth', 2.2,'Color','r')
xlabel('X Axis')
ylabel('Y Axis')
title('Plot of exp(x) over x')
