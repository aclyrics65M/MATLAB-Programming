% Sine function plots
% sinefunction.m

% X range values
x1 = linspace(0,pi,10);
x2 = linspace(0,pi,100);

y1 = sin(x1);
y2 = sin(x2);

% Plotting the functions
plot(x1,y1,'b')
xlabel('X-axis');
ylabel('Y-axis');
title('Sine function with 10 points');

% New figure
figure;
plot(x2,y2,'r')
xlabel('X-axis');
ylabel('Y-axis');
title('Sine function with 100 points');