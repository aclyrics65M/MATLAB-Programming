function d = mmempty(a,b)
% MMEMPTY Substitute Value if Empty
% MMEMPTY(A,B) returns A if A is not empmty,
% otherwise B is returned.
%
% Example: The empty array problem in logical statements
% let a = []; then use MMEMPTY to set default logical state
        % (a==1) is [], but MMEMPTY(a,1)==1 is true
        % (a==0) is [], but MMEMPTY(a,0)==0 is true
% Also:
% sum(a) is 0, but sum(MMEMPTY(a,b)) = sum(b)
% prod(a) is 1, but prod(MMEMPTY(a,b)) = prod(b)
%
% See also ISEMPTY, SUM, PROD, FIND
if isempty(a)
    d = b;
else
    d = a;
end

