% MATLAB Script: PlotTimeData.m

% t variable (time)
t = (1920:10:2010)';

% p variable (population)
p = [ 75.995; 91.972; 105.711; 123.203; 131.669;
     150.697; 179.323; 203.212; 226.505; 249.633];

plot(datenum(t,1,1),p)

datetick('x','yyyy') % use 4-digit year on the x-axis
xlabel('Year')
ylabel('Population')
title('Figure 15.1: Population by Year')

% Creating a bar chart of company sales from November 2009 to December 2010
y = [2009 2009 2010*ones(1,12)]';
m = [11 12 (1:12)]';
s = [1.1 1.3 1.2 1.4 1.6 1.5 1.7 1.6 1.8 1.3 1.9 1.7 1.6 1.95]';
figure;
bar(datenum(y,m,1),s)  % Create the bar chart

datetick('x','mmmyy')
xlabel('Date')
ylabel('S Million')
title('Figure 15.2: Monthly Sales')