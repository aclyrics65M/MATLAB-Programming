% MATLAB Script
% Chapter 15 Problem 16

% Plot the water flow rate for the Mystical River one day
% Fit polynomials of order 3 and 4 through the points and plot

% Time and Flow vectors
time = 0:3:24;
flows = [800 980 1090 1520 1920 1670 1440 1380 1300];

% First Plot
subplot(1,2,1)
curve = polyfit(time,flows,3);
y3 = polyval(curve,time);
plot(time,flows,'ko',time,y3)
xlabel('Time')
ylabel('Flow rate')
title('Order 3 polynomial')

% Second Plot
subplot(1,2,2)
curve = polyfit(time,flows,4);
y4 = polyval(curve,time);
plot(time,flows,'ko',time,y4)
xlabel('Time')
ylabel('Flow rate')
title('Order 4 polynomial')