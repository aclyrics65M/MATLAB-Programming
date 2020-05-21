function resis = Req(varargin)
% Calculates the resistance of n resistors in parallel
% Format of call: Req(res1, res2, ..., resn)
% Returns the overall resistance

resis = 0;
for i = 1:nargin
   resis = resis + 1/varargin{i}; 
end
resis = resis ^ -1;
end