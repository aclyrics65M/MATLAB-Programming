% Velocity of moving water function is calculated by
% the following: 1.016sqrt(Pt - Ps)

function V = watervelocity(Pt, Ps)

V = 1.016*sqrt(Pt - Ps);


end