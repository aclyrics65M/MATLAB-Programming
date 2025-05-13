% MATLAB Script: BasicDataAnalysis.m

% Create some data
data = rand(10,1)

[sdata,sidx] = sort(data) % sort in ascending order

ridx(sidx) = 1:10 % ridx is rank

newdata = randn(10,4) % new data for sorting

[temp,idx] = sort(newdata(:,2)); % sort second column

newdatas = newdata(idx,:) % shuffle rows using idx from 2nd column

A = diff(data) % check random data

mono = all(A > 0) | all(A < 0) % as expected, not monotonic

B = diff(sdata) % check random data after sorting

mono = all(B > 0) | all(B < 0) % as expected, monotonic

all(diff(diff(sdata))==0) % random data is not equally spaced
all(diff(diff(1:25))==0) % but numbers from 1 to 25 are equally spaced