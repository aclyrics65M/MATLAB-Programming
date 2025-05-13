% MATLAB Script: PolynomialIntro.m

% polynomial coefficients
% Polynomial x^4 - 12x^3 + 0x^2 + 25x + 116
p = [1 -12 0 25 116]

r = roots(p)

pp = poly(r)

pp(abs(pp)<1e-12) = 0 % change small element to zero!

% Multiplication
a = [1 2 3 4];
b = [1 4 9 16];
c = conv(a,b)

% Addition
d = a + b
e = c + [0 0 0 d]