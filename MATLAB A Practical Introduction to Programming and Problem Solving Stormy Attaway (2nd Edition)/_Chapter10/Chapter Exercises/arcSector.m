function [area,length] = arcSector(radius, angle)
% The function arcSector takes two input arguments and returns the
% area and length of a circular arc. The two input arguments are the
% radius of the arc and the angle in degree radians
% Format of call: arcSector(radius of arc, angle of arc in radians)

area = (1/2)*angle*radius^2;

length = radius*angle;

end