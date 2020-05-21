% MATLAB Script
% Chapter 8 Problem 4

% Create three cell array variables (people's names, verbs, and nouns)
names = {'Harry', 'Xavier', 'Sue'};
verbs = {'loves', 'eats'};
nouns = {'baseballs', 'rocks', 'sushi'};

% Select random elements from each of the cell arrays
first_rand_index = randi([1 length(names)]);
second_rand_index = randi([1 length(verbs)]);
third_rand_index = randi([1 length(nouns)]);

% Word elements
Word_1 = names{first_rand_index};
Word_2 = verbs{second_rand_index};
Word_3 = nouns{third_rand_index};

% Print out the completed sentence
fprintf('%s %s %s\n', Word_1, Word_2, Word_3);
