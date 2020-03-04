% Chapter 5 Problem 9
% Generate a random integer n, create a vector of the integers one through
% n in steps of 2, square them, and plot the squares.

n = randi(100);

N = 2 * randi([10 20],1) - 1;

vector = [1:2:N].^2;

% Plot the vectors
plot(vector, 'b-*');
xlabel('Element Number');
ylabel('Element Value Squared');
title('Chapter 5 Problem 9 (Random Integer N)');