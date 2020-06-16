function outval = fib(n)
% Recursively calculates the nth Fibonacci number
% Format of call: fib(n)
% Returns the nth Fibonacci number

if n == 0
    outval = 0;
elseif n == 1
    outval = 1;
else
    outval = fib(n-2) + fib(n-1);
end
end