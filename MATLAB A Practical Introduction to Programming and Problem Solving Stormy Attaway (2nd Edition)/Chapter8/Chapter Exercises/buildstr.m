function outputcell = buildstr(inchar, posint)
% Creates a cell array with strings of increasing
% lengths, from 1:n, starting with inchar
% Format of call: buildstr(input char, n)
% Returns the cell array with n strings

outputcell = cell(1, posint);
inchar = char(inchar-1);

strin = '';

for i = 1:posint
    strin = strcat(strin, char(inchar+i));
    outputcell{i} = strin;
end

end