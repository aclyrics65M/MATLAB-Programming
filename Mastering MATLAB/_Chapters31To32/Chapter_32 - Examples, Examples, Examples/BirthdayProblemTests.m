% MATLAB File: BirthdayProblemTests.m

%% test birthday problem results

n = 23;   % number of people in test group
bdays = randi(365,1,n) % generate n random birthdays

% the number of duplicate values in bdays
% is the number of shared birthdays in the group.

% sort bdays to get duplicates next to each other

sortedbdays = sort(bdays)

% find duplicates by taking differences

diffbdays = diff(sortedbdays)

% shared birthdays occur where values are zero

numshared = sum(diffbdays == 0)