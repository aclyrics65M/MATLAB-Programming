% MATLAB Script
% Chapter 14 Problem 10

% This script plays a guessing game

% Make the custom colormap
mycolors = [1 1 1;1 0 0; 0 0 1];

% Select color map to use
colormap(mycolors)

% Set n
n = 10;

% Make the image matrix. Start all white.
M = ones(n);

% Randomly select an element, row and column
R = randi([1 n], 1);
C = randi([1 n], 1);

% Initialize the guess, wrong of course.
GR = -1;
GC = -1;

% Now loop until the user guesses the random element's row and column
% indices
while ~(GR == R && GC == C)
   GR = input('Enter the row #: ');
   GC = input('Enter the col #: ');
   if GR == R && GC == C
       M(R,C) = 2;
   else
       M(GR,GC) = 3;
   end
   image(M)
end
