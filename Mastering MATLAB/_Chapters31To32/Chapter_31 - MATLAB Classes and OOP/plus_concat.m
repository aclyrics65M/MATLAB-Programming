% MATLAB file: plus_concat.m

function s = plus_concat(s1,s2)
% Horizontal Concatenation for char Objects.

if ischar(s1)&ischar(s2)
    s = cat(2,s1(:).',s2(:).');
elseif isnumeric(s2)
    s = double(s1)+s2;
else
    error('Operator + Not Defined')
end