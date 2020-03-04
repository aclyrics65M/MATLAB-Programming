% Sample Problem

x = linspace(-10,10,20);
y = x.^3 + (4.*(x.^2)) + (2.*x) - 3;
plot(x,y,'Linewidth',1.55)
xlabel('x')
ylabel('y')
title('Sample Cubic Graph')