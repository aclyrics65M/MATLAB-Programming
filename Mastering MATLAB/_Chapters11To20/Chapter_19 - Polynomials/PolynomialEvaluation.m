% MATLAB Script: PolynomialEvaluation.m

p = [1 4 -7 -10];       % the polynomial
x = linspace(-1,3);     % evaluation points
v = polyval(p,x);       % evaluate p at points in x
plot(x,v)               % polot results
title('Figure 19.1:   x{^3} + 4x{^2} - 7x -10')
xlabel('x')
ylabel('y')