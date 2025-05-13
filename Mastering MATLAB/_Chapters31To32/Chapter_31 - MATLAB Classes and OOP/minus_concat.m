% MATLAB file: minus_concat.m

function s = minus_concat(s1,s2)
% Subtraction for char Objects.
% Delete occurrences of s2 in s1.

if ischar(s1)&ischar(s2)
    s = strrep(s1,s2,'');
elseif isnumeric(s2)
    s = double(s1)-s2;
else
    error('Operator - Not Defined')
end