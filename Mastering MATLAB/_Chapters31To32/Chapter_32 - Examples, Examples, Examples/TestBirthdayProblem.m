% MATLAB File: TestBirthdayProblem.m

%% test birthday problem

Ntests = 1000; % number of random trials to run
n = 23; % size of group to test

shared = zeros(1,Ntests); % preallocate result array

for k = 1:Ntests

    bdays = randi(365,1,n);
    % the number of duplicates values in bdays
    % is the number of shared birthdays in the group.

    % sort bdays to get duplicates next to each other
    sortedbdays = sort(bdays);

    % find duplicates by taking differences
    diffbdays = diff(sortedbdays);

    % shared birthdays occur when there are zero values
    shared(k) = any(diffbdays==0);
end

% probability is equal to normalized number of times
% that shared birthdays appear in the trials
probshared = sum(shared)/Ntests