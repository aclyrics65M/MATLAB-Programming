function newmean = outliers(vec)
% Calculates the mean minus the minimum and maximum values
% Format of call: outliers(vector)
% Returns mean of vector except largest & smallest
% Find and remove the minimum value

[small, indlow] = min(vec);
vec(indlow) = [];

% Find and remove the maximum value
[large, indhigh] = max(vec);
vec(indhigh) = [];

% Calculate the mean of the rest of the vector
newmean = mean(vec);
end