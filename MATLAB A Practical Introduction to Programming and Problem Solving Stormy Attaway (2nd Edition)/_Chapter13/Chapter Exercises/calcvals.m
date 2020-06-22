function [mmax varargout] = calcvals(vec)
% Return the maximum of a vector and possibly also the minimum and mean
% Format of call: calcvals(vector)
% Returns the max of the vector, and if 2 output
% arguments are expected the min, and if 3 expected also the mean

n = nargout;

% Define the max
mmax = max(vec);

% Depending on how many outputs are called for, return the min
% or mean as well as the max
if n == 2
    varargout{1} = min(vec);
elseif n == 3
    varargout{1} = min(vec);
    varargout{2} = mean(vec);
end
end
