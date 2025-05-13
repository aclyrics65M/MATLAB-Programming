function mmswap(x,y)
%MMSWAP Swap Two Variables.
% MMSWAP(X,Y) or MMSWAP X Y swaps the contents of the
% variable X and Y in the workspace where it is called.
% X and Y must be variables not literals or expressions.
%
% For example: Rat = ones(3); Tar=pi; MMSWAP(Rat,Tar) or MMSWAP Rat Tar
% swaps the contents of the variables named Rat and Tar in the
% workspace where MMSWAP is called giving Rat = pi and Tar = ones(3).
if nargin~=2
    error('Two Input Arguments Required.')
end

if ischar(x) & ischar(y) % MMSWAP X Y 'string input arguments'
    % check existence of arguments in caller
    estr = sprintf('[exist(''%s'',''var'') exist(''%s'',''var'')]',x,y);
    t = evalin('caller',estr);
    if all(t) % both x and y are valid
        xx = evalin('caller',x); % get contents of x
        yy = evalin('caller',y); % get contents of y
        assignin('caller',y,xx) % assign contents of x to y
        assignin('caller',x,yy) % assign contents of y to x
    elseif isequal(t,[0 1]) % x is not valid
        error(['Undefined Variable: ''' x ''''])
    elseif isequal(t,[1 0]) % y is not valid
        error(['Undefined Variable: ''' y ''''])
    else % neither is valid
        error(['Undefined Variables: ''' x ''' and ''' y ''''])
    end

else % MMSWAP(X,Y) 'numerical input arguments'
    xname = inputname(1); % get x argument name if it exists
    yname = inputname(2); % get y argument name if it exists
 
    if ~isempty(xname) & ~isempty(yname) % both x and y are valid
        assignin('caller',xname,y) % assign contents of y to x
        assignin('caller',yname,x) % assign contents of x yo y
    else
        error('Arguments Must be Valid Variables.')
    end

end