% MATLAB function WCF.m

function [wcf] = WCF(T,V)
% WCF returns the wind chill factor given air temperature
% and wind speed

% The formula for the wind chill factor is coded here
wcf = 35.7 + 0.6*T - 35.7*(V^0.16) + 0.43*T*V^0.16;

end