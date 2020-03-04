% Timing function
% fortictoc.m matlab function

tic
mysum = 0;
for i = 1:20000000
    mysum = mysum + i;
end
toc