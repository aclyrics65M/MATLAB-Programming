% MATLAB Script: Specialized2DPlots.m

% Stacked Area Plot
z = -pi:pi/5:pi;
area([sin(z);cos(z)])
title('Figure 25.11: Stacked Area Plot')

% Stop Sign
t = (1:2:15)'*pi/8;
x = sin(t);
y = cos(t);
figure;
fill(x,y,'r') % a filled red circle using only 8 data points
axis square off
text(0,0,'STOP', ...
    'Color',[1 1 1], ...
    'FontSize', 80, ...
    'FontWeight','bold', ...
    'HorizontalAlignment','center')
title('Figure 25.12: Stop Sign')

% Pie Chart example
a = [0.5 1 1.6 1.2 0.8 2.1];
figure;
pie(a,a==max(a));    % char a and pull out the biggest slice
title('Figure 25.13: Example Pie Chart')

% Two Plots on the Same and Different Scales
x = -2*pi:pi/10:2*pi;
y = sin(x);
z = 3*cos(x);
figure;
subplot(2,1,1)
plot(x,y,x,z)
title('Figure 25.14a: Two plots on the same scale.');
subplot(2,1,2)
plotyy(x,y,x,z)
title('Figure 25.14b: Two plots on different scales.')

% Bar and Stair Plots
x = -2.9:0.2:2.9;
y = exp(-x.*x);

figure;
subplot(2,2,1)
bar(x,y)
title('Figure 25.15a: 2-D Bar Chart')

subplot(2,2,2)
bar3(x,y,'r')
title('Figure 25.15b: 3-D Bar Chart')

subplot(2,2,3)
stairs(x,y)
title('Figure 25.15c: Stair Chart')

subplot(2,2,4)
barh(x,y)
title('Figure 25.15d: Horizontal Bar Chart')

% Histogram Plot of Gaussian Data
x = -2.9:0.2:2.9;    % specify the bins to use
y = randn(5000,1);   % generate 5000 random data points
figure;
hist(y,x)            % draw the histogram
title('Figure 25.16: Histogram of Gaussian Data')

% Stem Plot of Random Data
figure;
z = randn(30,1);      % create some random data
stem(z,'--')          % draw a stem plot using dashed linestyle
set(gca,'YGrid','on') % turn grid on Y-axis only
title('Figure 25.17: Stem Plot of Random Data')

% Errorbar Plot
x = linspace(0,2,21);  % create a vector
y = erf(x);            % y is the error function of x
e = rand(size(x))/10;  % e contains random error values

figure;
errorbar(x,y,e)        % create the plot
title('Figure 25.18: Errorbar Plot')

% Subplot (Polar, Compass, Feather, Angle Histogram)
t = linspace(0,2*pi);
r = sin(2*t).*cos(2*t);
figure;
subplot(2,2,1)
polar(t,r)
title('Figure 25.19a: Polar Plot')

z = eig(randn(20));
subplot(2,2,2)
compass(z)
title('Figure 25.19b: Compass Plot')
subplot(2,2,3)
feather(z)
title('Figure 25.19c: Feather Plot')
subplot(2,2,4)
v = randn(1000,1)*pi;
rose(v)
title('Figure 25.19d: Angle Histogram')

% Scatter Plot
x = rand(40,1);
y = randn(40,1);
area = 20+(1:40);
figure;
scatter(x,y,area)
box on
title('Figure 25.20: A scatter plot')