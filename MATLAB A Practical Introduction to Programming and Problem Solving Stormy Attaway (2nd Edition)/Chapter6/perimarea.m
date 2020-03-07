function [perim area] = perimarea(length, width)
% Perimeterarea function MATLAB program perimarea.m
% perimarea returns the area and
% the perimeter of a rectangle
% Format: perimarea(length, width)

area = length * width;
perim = 2*(length + width);
end