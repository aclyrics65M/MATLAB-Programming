% MATLAB script
% Chapter 8 Problem 1

% Create a cell array that stores phrases.

exclaimcell = {'Bravo','Fantastic Job'};
random_index = randi([1 length(exclaimcell)]);

%string_element = exclaimcell(randi([1 numel(exclaimcell)]));
%string_element = exclaimcell(random_int);

fprintf('An element of the cell array is: %s\n', exclaimcell{random_index});
