% MATLAB Script: SineCosineWavePlot.m

x = linspace(0,2*pi,30);
y = sin(x);
plot(x,y)
title('Figure 25.1: Sine Wave')

z = cos(x);
figure;
plot(x,y,x,z)
title('Figure 25.2: Sine and Cosine')

W = [y;z]; % create a matrix of the sine and cosine
figure;
plot(x,W) % plot the columns of W vs. x

figure;
plot(W,x) % plot x vs. the columns of W
title('Figure 25.3: Change Argument Order')