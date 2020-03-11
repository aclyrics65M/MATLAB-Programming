function [m, nm] = distConvert(K)
% DISTCONVERT Converts both kilometers to miles and nautical miles
% Format of call: distConvert(K)
% Returns distance in miles and nautical miles
% Convert the number of kilometers(K) to miles and U.S. nautical miles
m = K * 0.621;
nm = K / 1.852;

end