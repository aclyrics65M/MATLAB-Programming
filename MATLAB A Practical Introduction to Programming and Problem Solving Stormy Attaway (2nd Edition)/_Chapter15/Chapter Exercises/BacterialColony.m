% MATLAB Script
% Chapter 15 Problem 32

% Bacterial Colony Reproduction
No = 10^2;
N = 10^8;
t = 8;
T = sym('T');
eqn = log(No) + (t/T)*log(2) - log(N);
Time = double(solve(eqn))