% MATLAB Script
% Chapter 14 Problem 3

% Creates a four color image using a custom colormap
mycolormap = [1 0 0; 0 1 0; 0 0 1; 1 1 1];
colormap(mycolormap)
mat = ones(50);
mat(1:25,1:25) = 4;
mat(1:25, 26:50) = 2;
mat(26:50, 26:50) = 3;
image(mat)