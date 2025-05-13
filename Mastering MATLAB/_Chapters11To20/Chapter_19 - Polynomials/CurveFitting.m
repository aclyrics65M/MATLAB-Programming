% MATLAB Script: CurveFitting.m

% X and Y Data
x = [0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1];
y = [-0.447 1.978 3.28 6.16 7.08 7.34 7.66 9.56 9.48 9.30 11.2];

% Polyfit the data
n = 2;
p = polyfit(x,y,n)

xi = linspace(0,1,100);
yi = polyval(p,xi);

plot(x,y,'-o',xi,yi,'--')
xlabel('x')
ylabel('y = f(x)')
title('Figure 19.2: Second Order Curve Fitting')

% Second and 10th Order Curve Fitting
pp = polyfit(x,y,10);
pp.' % display polynomial coefficients as a column

y10 = polyval(pp,xi); % evaluate 10th order polynomial
figure;
plot(x,y,'o',xi,yi,'--',xi,y10) % plot data
xlabel('x')
ylabel('y = f(x)')
title('Figure 19.3: 2nd and 10th Order Curve Fitting')