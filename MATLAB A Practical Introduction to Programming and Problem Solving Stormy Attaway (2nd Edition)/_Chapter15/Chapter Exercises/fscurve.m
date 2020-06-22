function fscurve(x,y)
% This function fits two straight lines based on rising and
% falling parts of one data set
% Find the index of the peak value in data set
[~, Index] = max(y);

% Make two datasets, one for the rising line and other for falling line.
x1 = x(1:Index);
x2 = x(Index:end);
y1 = y(1:Index);
y2 = y(Index:end);

% Find the coefficients of the best fit polynomial for both sets
Coef1 = polyfit(x1,y1,1);
Coef2 = polyfit(x2,y2,1);

% Get the points on the curve
X1 = polyval(Coef1,x1);
Y1 = polyval(Coef2,x2);

% Plot the original points with red starts and also plot
% the rising and falling lines
plot(x,y,'r*',x1,X1,x2,Y1)
xlabel('x')
ylabel('y')
legend('Original Points','First Part','Second Part')
end