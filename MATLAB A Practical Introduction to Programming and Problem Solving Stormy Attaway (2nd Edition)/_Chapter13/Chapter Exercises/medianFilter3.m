function outvec = medianFilter3(vec)
% Computes a median filter with a size of 3
% Format of call: medianFilter3(vector)
% Returns a median filter with size 3

outvec = vec;

for i = 2:length(vec) - 1
    outvec(i) = median([vec(i-1) vec(i) vec(i+1)]);
end
end