function [xpt, ypt] = entercoords(word)
% entercoords reads in % returns the coordinates of
%  the specified endpoint of a line segment
% Format: entercoords(word) where word is 'first'
%         or 'second'

% Two different methods are used to customize th
%  prompt to show the difference
fprintf('Enter the x coord of the %s endpoint: ', word)
xpt = input(' ');

prompt = sprintf('Enter the y coord of the %s endpoint: ', word);
ypt = input(prompt);
end