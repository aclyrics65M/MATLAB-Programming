function Rand_Interpol(x,y)
% The function receives x and y data to plot. It finds the best fit
% polynomials of orders 3 and 4. Plots the original data and the
% polynomials with 100 points. Also it plots a random interpolated integer
% on each polynomial and the mean. 
% Format of call: Rand_Interpol(x,y)
% Returns nothing

% Generate a random integer within the range of x values
r = randi([ceil(x(1)) floor(x(end))],1);

% Best polynomial fit of degree 2
coefs = polyfit(x,y,2);

% Get points on the curve to plot
X = linspace(min(x),max(x));
P2 = polyval(coefs,X);
R2 = polyval(coefs,r);

% Best polynomial fit of degree 3
coefs = polyfit(x,y,3);
P3 = polyval(coefs,X);
R3 = polyval(coefs,r);

% Plot the data and best fit polynomials
plot(x,y,'k*',X,P2,'b-',X,P3,'g-')
xlabel('x')
ylabel('y')
legend('original points','polynomial deg 2', 'polynomial deg 3', 'Location','Best')
hold on

% Plot the interpolated integer and the mean fo the interpolations
M = mean([R2 R3]);
plot(r,R2,'r*',r,R3,'r*',r,M,'ro')

end