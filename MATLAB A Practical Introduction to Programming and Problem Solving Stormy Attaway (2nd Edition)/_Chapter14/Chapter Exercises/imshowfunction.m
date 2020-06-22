% MATLAB Script
% Chapter 14 Problem 16

I1 = imread('SnowMountainAspen.jpg');
[r c h] = size(I1);

Inew(:,:,:) = I1(:,c:-1:1,:);
figure(1)
subplot(2,1,1)
imshow(I1);
subplot(2,1,2)
imshow(Inew);