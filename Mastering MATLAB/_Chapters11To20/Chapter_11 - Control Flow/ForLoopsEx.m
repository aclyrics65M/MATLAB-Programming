% MATLAB program: ForLoopsEx.m

% First for-loop example:
for n = 1:10
    x(n) = sin(n*pi/10);
end

x

for n = 10:-1:1 % decrementing loop
    x(n) = sin(n*pi/10);
end

x

i = 0; % count loop iterations
for n = (1:10)'
    i = i+1;
    x(n) = sin(n*pi/10);
end

i % Only one time through the loop!
x

array = randperm(10)

for n = array
    x(n) = sin(n*pi/10);
end

x

for n = 1:10
    x(n) = sin(n*pi/10);
    n = 10;
end

x

i = 1;
for x = rand(4,5)
    y(i) = sum(x);
    i = i+1;
end
y

for n = 1:5
    for m = 5:-1:1
        A(n,m) = n^2 + m^2;
    end
    disp(n)
end

A