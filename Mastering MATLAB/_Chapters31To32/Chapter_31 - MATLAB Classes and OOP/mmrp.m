function r = mmrp(varargin)
%MMRP Mastering MATLAB Rational Polynomial Object Constructor.
% MMRP(p) creates a polynomial object from the polynomial vector p
% with 'x' as the variable.
% MMRP(p,'s') creates the polynomial object using the letter 's' as
% the variable in the display of p.
% MMRP(n,d) creates a rational polynomial object from the numerator
% polynomial vector n and denominator polynomial d.
% MMRP(n,d,'s') creates the rational polynomial using the letter 's' as
% the variable in the display of p.
%
% All coefficients must be real.

[n,d,v,msg] = local_parse(varargin); % parse input arguments

if isempty(v) % input was mmrp so return it
    r = n;
else
    error(msg) % return error if it exists
    tol = 100*eps;
    if length(d)==1 & abs(d)>tol % enforce scalar d = 1
        r.n = n/d;
        r.d = 1;
    elseif abs(d(1))>tol % make d monic if possible
        r.n = n/d(1);
        r.d = d/d(1);
    else                 % can't be made monic
        r.n = n;
        r.d = d;
    end
    r.v = v(1);
    r.n = mmpsim(r.n);   % strip leading zero terms
    r.d = mmpsim(r.d);   % see chapter 19 for mmpsim
    %r = minreal(r);      % perform pole-zero cancellation
end % if


end % mmrp function