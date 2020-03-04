% expnlog.m

% This script plots exp(x) and log(x) for values of x ranging
% from 0.5 to 2.5

clf
x = 0.5:0.1:2.5;
y = exp(x);
plot(x,y,'b*')
hold on

y = log(x);
plot(x,y,'ro')
legend('exp(x)','log(x)')
xlabel('x')
ylabel('exp(x) or log(x)')
title('exp and log on one graph')