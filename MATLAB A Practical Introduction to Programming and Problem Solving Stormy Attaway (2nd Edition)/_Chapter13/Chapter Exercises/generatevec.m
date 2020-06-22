function [outvec, count] = generatevec(n)
trialvec = round(rand(1,n)*99)+1;
count = 1;

while ~alldiff(trialvec)
    trialvec = round(rand*99)+1;
    count = count + 1;
end
outvec = trialvec;
end