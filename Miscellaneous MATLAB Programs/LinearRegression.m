% Linear Regression Sample Matlab Code

n = 100; % Observation number
noise = randn(n,1); % Artificial noise

x = rand(n,1).*10; % Artificially enlarged

y = 2 + 3.5 * x + noise;

% plot function
plot(x,y,'.')

lsline

%X = [ones(size(x)) x];
%beta = regress(y,X);