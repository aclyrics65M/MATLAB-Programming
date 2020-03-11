function Area = triarea(P)
% TRIAREA computes the area of a triangle from the coordinates
% of the three vertices in matrix P(X,Y)

% Get the triangle's side lengths
A = distance(P(1,:),P(2,:));
B = distance(P(2,:),P(3,:));
C = distance(P(3,:),P(1,:));

% Get the number S
S = (A + B + C)/2;

% Compute the area with the formula
Area = sqrt(S * (S - A) * (S - B) * (S - C));

end