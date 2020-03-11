function [C A] = getcircarea(r)
% GETCIRCAREA computes the circumference and area from
% the radius
% Format of call: getcircarea(r)
% Returns circumference and area

C = 2 * pi * r;
A = pi * r^2;

end