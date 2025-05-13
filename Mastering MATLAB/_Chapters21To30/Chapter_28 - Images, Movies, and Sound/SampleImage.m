% MATLAB Script: SampleImage.m

load clown         % sample image
[r,c] = size(X);   % pixel dimensions
figure('Units','Pixels','Position',[100 100 c r])
image(X)
set(gca,'Position',[0 0 1 1])
colormap(map)