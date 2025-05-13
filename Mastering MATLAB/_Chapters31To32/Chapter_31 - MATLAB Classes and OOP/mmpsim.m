function y = mmpsim(x,tol)
%MMPSIM Polynomial Smiplification
% Strip leading zero terms and small coefficients

if nargin<1 | ~isnumeric(x)
    error('First Input Must be Numeric')
end

x = x(:).';         % make sure input is a row

if nargin<2
    tol = max(abs(x))*100*eps;      % default tolerance
else
    tol = max(tol(1),eps);          % check user tolerance
end

i = find(abs(x)<.99 & abs(x)<tol);  % find insignificant indices
x(i) = 0;                           % set them to zero
i = find(x~=0);                     % find significant indices

if isempty(i)
    y = 0;                          % the extreme case: nothing left!
end

y = x(i(1):end);                    % start with first significant term

end