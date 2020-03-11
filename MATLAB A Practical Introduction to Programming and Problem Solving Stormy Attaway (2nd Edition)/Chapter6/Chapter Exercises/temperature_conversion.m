function [C, K] = temperature_conversion(F)
% The matlab function temperature_conversion takes an input argument
% in fahrenheit and converts it to both celsius and kelvin degrees
C = (F - 32) * (5/9);
K = C + 273.15;

fprintf('The degree in celsius is %0.2f\n', C);
fprintf('The degree in kelvin is %0.2f\n', K);

end