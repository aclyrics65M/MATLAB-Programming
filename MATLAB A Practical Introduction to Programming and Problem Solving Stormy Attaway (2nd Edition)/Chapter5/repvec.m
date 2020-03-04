% Chapter 5 Problem 11
% repvec function

function [vec_out] = repvec(vec_in, n)
% Format of call: repvec(vec_in, n)
% Returns resulting vector

t = repmat(vec_in, n, 1);
vec_out = reshape(t, 1, numel(t));

end
