% MATLAB program: IfElseExample.m

apples = 10;        % number of apples
cost = apples*25    % cost of apples

if apples > 5       % give 20% discount for larger purchases
    cost = (1-20/100)*cost;
end

cost

