% MATLAB File: BirthdayProblem.m

%% Birthday Problem Solutions

% create anonymous functions

% analytic solution
p = @(n) 1 - factorial(n)*nchoosek(365,n)/(365^n);

% note that the function factorial implements n!
% and nchoosek implements (365 over n)

% approximate solution
p_a = @(n) 1 - exp(-(n^2)/(2*365));

% the functions operate on scalar inputs,
% so a loop is required to gather data.

% preallocate memory for results (ALWAYS do this!)

N = 50; % maximum number of people
pexact = zeros(1,N);
papprox = zeros(1,N);

for n = 1:N              % JIT acceleration will work here!
    pexact(n) = p(n);
    papprox(n) = p_a(n);
end

nn = 1:N; % x axis for plot
plot(nn,pexact,nn,papprox)
grid on
xlabel('Number of People in Group')
ylabel('Probability of Shared Birthdays')
title('Figure 32.1: Birthday Problem')