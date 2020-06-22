% MATLAB Script
% Chapter 14 Problem 6

% Create n random colors and then display
% these in a row vector "image"
ncolors = 10;
mycolormap = rand(ncolors,3)
colormap(mycolormap)
vec = 1:ncolors;
image(vec)