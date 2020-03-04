% Chapter 5 Problem 8
% Function geomser

function [output] = geomser(r,n)

output = 0;
for i = 0:n
    output = output + (r^i);
end

end