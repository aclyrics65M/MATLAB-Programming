% MATLAB file: concat_strings

function s = concat_strings(varargin)
% CAT Concatenate Strings as a Row.

if length(varargin)>1 & ~ischar(varargin{2})
    error('CAT Not Defined for Mixed Classes.')
else
    s = concat_strings(2,varargin{:});
end