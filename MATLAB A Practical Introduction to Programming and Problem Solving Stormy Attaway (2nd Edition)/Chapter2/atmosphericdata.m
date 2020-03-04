% Plot of Atmosphere temperature and altitudes

% atmosphericdata.m

% Load the file

load atmosphere.dat

% The altitudes are in the first column 
% and the temperatures in the second column

altitudes = atmosphere(:,1);
temperatures = atmosphere(:,2);

% Plot the data and label the plot
plot(altitudes, temperatures, 'k-')
xlabel('Altitude (feet)');
ylabel('Temperature (K)');
title('Plot of Temperature over Altitude');