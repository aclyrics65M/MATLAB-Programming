% MATLAB Script
% Chapter 15 Problem 30

syms t
S = solve(90*exp(-30*t/65)==10)

% Solve for T
T = double(S)