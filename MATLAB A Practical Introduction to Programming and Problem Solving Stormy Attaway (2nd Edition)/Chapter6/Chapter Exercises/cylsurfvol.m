function [SA V] = cylsurfvol(r,h)
% CYLSURFVOL Finds both the surface area and the volume 
% of a hollow cylinder given both the base radius and the height
% Format of a call is: cylsurfvol(r,h)
% Returns the area and volume
% Computes the surface area and volume
SA = 2 * pi * r * h;
V = pi * (r^2) * h;

end