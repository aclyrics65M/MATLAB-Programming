function plotsin(xs, A, B)
% PLOTSIN plots a sin function from A to B
% Format of call: plot sin (A,B)
% Returns nothing
x = [A:xs:B];
plot(x,sin(x))
title('The sine function')
xlabel('x')
ylabel('sin(x)')
end