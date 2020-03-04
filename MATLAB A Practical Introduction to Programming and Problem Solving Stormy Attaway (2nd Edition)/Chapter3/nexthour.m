% Write a function called nexthour

function [output] = nexthour(h)

if h == 12
    output = 1;
else
    output = h + 1;

end