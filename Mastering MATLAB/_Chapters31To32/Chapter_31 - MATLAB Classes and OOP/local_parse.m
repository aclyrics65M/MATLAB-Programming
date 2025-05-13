function [n, d, v, msg] = local_parse(args)
%LOCAL_PARSE Parse input arguments for MMRP constructor.
% Parses input arguments for the MMRP function and returns the numerator (n),
% denominator (d), variable (v), and any error message (msg).

msg = '';   % Initialize error message as empty
v = 'x';    % Default variable is 'x'
n = [];     % Initialize numerator
d = [];     % Initialize denominator

% Check number of arguments
if isempty(args)
    msg = 'No input arguments provided.';
    return;
end

% Parse based on the number of inputs
switch length(args)
    case 1
        % Single argument: polynomial vector (numerator only)
        if isnumeric(args{1}) && isvector(args{1})
            n = args{1};
            d = 1; % Default denominator
        else
            msg = 'Single input must be a numeric vector.';
        end
    case 2
        % Two arguments: numerator and denominator vectors
        if isnumeric(args{1}) && isnumeric(args{2}) && isvector(args{1}) && isvector(args{2})
            n = args{1};
            d = args{2};
        else
            msg = 'Numerator and denominator must be numeric vectors.';
        end
    case 3
        % Three arguments: numerator, denominator, and variable
        if isnumeric(args{1}) && isnumeric(args{2}) && isvector(args{1}) && isvector(args{2}) && ischar(args{3})
            n = args{1};
            d = args{2};
            v = args{3};
        else
            msg = 'Numerator and denominator must be numeric vectors, and the variable must be a string.';
        end
    otherwise
        % More than 3 arguments are not allowed
        msg = 'Too many input arguments.';
end

% Validate coefficients (must be real numbers)
if isempty(msg) && (~isreal(n) || ~isreal(d))
    msg = 'All coefficients must be real.';
end

% Ensure the variable name is valid (single character)
if isempty(msg) && (~ischar(v) || length(v) ~= 1)
    msg = 'Variable must be a single character string.';
end

end
