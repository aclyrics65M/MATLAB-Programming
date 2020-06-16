function [root1, root2] = quadeq(a,b,c)
% Calculates the roots of a quadratic equation
% ignores potential errors for simplicity
% Format of call: quadeq(a,b,c)
% Returns the two roots

d = discr;

root1 = (-b + sqrt(d))/(2*a);
root2 = (-b - sqrt(d))/(2*a);
    
    % Inner function outd
    function outd = discr
    % calculates the discriminant
    % Format of call: discr or discr()
    % Returns the discriminant
    outd = b^2 - 4*a*c;
    end % inner function

end % outer function