function [r, theta] = recpol(x,y)
% RECPOL Converts rectangular to polar coordinates
% Format of call: recpol(x,y)
% Returns both r and theta
% Converts x and y to r and theta
r = sqrt(x^2 + y^2);
theta = atan(y/x);

end