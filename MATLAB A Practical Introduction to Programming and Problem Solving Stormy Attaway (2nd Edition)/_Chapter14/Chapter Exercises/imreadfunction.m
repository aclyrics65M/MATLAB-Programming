% MATLAB Script
% Chapter 14 Problem 12

% Imread function for Snow Mountain Aspen picture (JPEG)
im = imread('SnowMountainAspen.jpg');

[r c d] = size(im);

% Red, Green, and Blue variables
red = im(:,:,1);
green = im(:,:,2);
blue = im(:,:,3);

% Red, Green, and Blue mean
rmean = mean(mean(red));
gmean = mean(mean(green));
bmean = mean(mean(blue));

% Red, Green, and Blue standard deviation
rstd = std(double(reshape(red,1,r*c)));
gstd = std(double(reshape(green,1,r*c)));
bstd = std(double(reshape(blue,1,r*c)));

fprintf('The mean of the red pixels is %.2f ',rmean)
fprintf('with a standard deviation of %.2f\n',rstd)
fprintf('The mean of the green pixels is %.2f ',gmean)
fprintf('with a standard deviation of %.2f\n',gstd)
fprintf('The mean of the blue pixels is %.2f ',bmean)
fprintf('with a standard deviation of %.2f\n',bstd)