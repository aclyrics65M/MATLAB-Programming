function[area, perim] = areaperim(r,n)
% Function areaperim calculates both the area and perimeter
% of a polygon with n sides and radius r. The area and perimeter
% of a polygon can be found by: A = (1/2)*n*r^2*sin(pi/n) and
% P = 2*n*r*sin(pi/n) 
% Format of call: areaperim(radius of circle, number of sides)

area = (1/2)*n*(r^2)*sin(pi/n);

perim = 2*n*r*sin(pi/n);

end