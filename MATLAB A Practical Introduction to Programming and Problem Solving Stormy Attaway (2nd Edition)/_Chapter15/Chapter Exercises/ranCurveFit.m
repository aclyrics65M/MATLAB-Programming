function ranCurveFit(x,y)
% Uses x,y input data vectors, performs a curve fit with a random
% polynomial degree. Function terminates if input vectors
% have different lengths.
% Format of call: ranCurveFit(x,y)
% Does not return any values

if length(x) ~= length(y)
    disp('Error! x and y must have the same length')
else
    n = randi([1,length(x)-1]);
    coefs = polyfit(x,y,n);
    curve = polyval(coefs,x);
    plot(x,y,'ko',x,curve)
    title(sprintf('Polynomial degree: %d',n))
end
end   