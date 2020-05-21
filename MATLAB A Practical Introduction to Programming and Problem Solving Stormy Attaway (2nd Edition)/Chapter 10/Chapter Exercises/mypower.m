function res = mypower(a,n)
% recursively finds a^n
% Format of call: mypower(a,n)
% Returns a^n

if n == 0
    res = 1;
else
    res = a * mypower(a,n-1);
end

end