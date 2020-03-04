% MATLAB function sumMtoN

function runsum = sumMToN(m,n)
% sumMToN returns the sum of integers from m to n
% Format of call: sumMToN(m,n)

runsum = 0;
for i = m:n
   runsum = runsum + i;
end
end