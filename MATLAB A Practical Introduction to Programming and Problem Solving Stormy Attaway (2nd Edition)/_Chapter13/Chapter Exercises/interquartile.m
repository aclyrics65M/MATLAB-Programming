function range = interquartile(vector)
% function interquartile finds the interquartile range of values of a given
% vector
% Format of call: interquartile(vector)

sample_q = quantile(vector,[0.25 0.75]);

new_vector = vector(vector > sample_q(1) & vector < sample_q(2));

range = max(new_vector) - min(new_vector);
end