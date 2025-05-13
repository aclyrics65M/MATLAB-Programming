% Array Construction Techniques

% Create row vector containing arbitrary elements
x = [2 2*pi sqrt(2) 2-3j]

% Create row vector x starting with first, counting by 1, and ending at or
% before last
x = [1:10]

% Create row vector x starting with first, counting by increment, and
% ending at or before last
x = [2:2:20]

% Creates linearly spaced row vector x starting with first, ending at last,
% having n elements
x = linspace(1,50,10)

% Creates logarithmically spaced row vector x starting with 10^first,
% ending at 10^last, and having n elements
x = logspace(1,5,5)