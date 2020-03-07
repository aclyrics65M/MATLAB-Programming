function num = posnum
% Prompt user and error-check until the
% user enters a positive number

num = input('Enter a positive number: ');
while num < 0
    errorsubfn(num)
    num = input('Enter a positive number: ');
end

function errorsubfn(num)