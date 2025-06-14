% MATLAB File: updown1.m
% up-down algorithm

N = 25;    % number to test
count = 0; % iteration count

while N>1
    if rem(N,2)==0  % even, since division by 2 gives zero remainder
        N=N/2;
        count = count + 1;
    else              % odd
        N = (3*N+1)/2;
        count = count + 2;
    end
end
count % display iteration count