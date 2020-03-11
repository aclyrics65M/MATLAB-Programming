function D = distance(P,Q)
% DISTANCE calculates the distance between two points
% P = (X1,Y1) and Q = (X2,Y2).

D = sqrt((P(1) - Q(1))^2 + (P(2) - Q(2))^2);

end