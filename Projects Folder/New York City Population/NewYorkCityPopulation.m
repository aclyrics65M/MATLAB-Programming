% Matlab Script that plots the population growth of New York City (NYC)
% During the course of the twentieth century.

data = xlsread('NewYorkCityPopulation.xlsx');

Year = data(1:11,1);
Population = data(1:11,2);

% Polynomial values
polyValues = polyfit(Year, Population, 3);
xp = [1900:1:2000];
yp = polyval(polyValues, xp);

% Plotting the chart
plot(Year,Population,'bo',xp,yp)
xlabel('Year');
ylabel('Population (Millions)');
title('Population Growth of New York City 1900-2000');

% Plotting Bar Graph
figure;
bar(Year,Population,'b')
xlabel('Year');
ylabel('Population Millions)');
title('Population Growth of New York City 1900-2000');

%disp(Year);

%disp(Population);