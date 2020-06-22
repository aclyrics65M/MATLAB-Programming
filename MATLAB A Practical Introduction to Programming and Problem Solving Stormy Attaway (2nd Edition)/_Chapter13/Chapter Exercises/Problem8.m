% MATLAB Script
% Chapter 13 Problem 8

% Create two vectors with 20 random integers in each.

% First vector will range from 1 to 5
% Second vector will range from 1 to 500
vector_one = randi([1,5],1,20);
vector_two = randi([1,500],1,20);

% Find the minimum, maximum, mean, median, standard deviation, and mode of
% each of them

% Vector 1 Stats
minimum_one = min(vector_one);
maximum_one = max(vector_one);
mean_one = mean(vector_one);
median_one = median(vector_one);
std_one = std(vector_one);
mode_one = mode(vector_one);
stat_vec_one = [minimum_one maximum_one mean_one median_one std_one mode_one];

% Vector 2 Stats
minimum_two = min(vector_two);
maximum_two = max(vector_two);
mean_two = mean(vector_two);
median_two = median(vector_two);
std_two = std(vector_two);
mode_two = mode(vector_two);
stat_vec_two = [minimum_two maximum_two mean_two median_two std_two mode_two];

% Plot the two vector statistics (One and Two) in a Histogram Subplot
figure;
subplot(2,1,1)
hist(vector_one);
xlabel('Random Integers')
ylabel('Frequency')
title('Vector One Histogram Plot')

subplot(2,1,2)
hist(vector_two);
xlabel('Random Integers')
ylabel('Frequency')
title('Vector Two Histogram Plot')


