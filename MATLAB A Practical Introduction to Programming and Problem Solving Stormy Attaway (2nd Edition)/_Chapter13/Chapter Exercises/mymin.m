function m = mymin(varargin)

nVarargs = length(varargin);

for k = 1:nVarargs
    a(k) = varargin{k};
end

m = min(a);
end