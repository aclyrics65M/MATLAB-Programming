% MATLAB program: WhileExample.m

num = 0;
EPS = 1;

while (1+EPS) > 1
    EPS = EPS/2;
    num = num+1;
end

num

EPS = 2*EPS