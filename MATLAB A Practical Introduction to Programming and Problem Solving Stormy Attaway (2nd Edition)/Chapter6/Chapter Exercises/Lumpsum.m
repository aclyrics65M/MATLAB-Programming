% Lumpsum.m MATLAB script
% This script plots the lump sum to be paid on a loan for
% years 1 through n. This is the main script and controls
% the program flow.

% Call a function readNYears that prompts the user for the 
% number of years and error checks to ensure n is a positive
% integer.
n = readNYears;

% Call a function to plot the lump sum payment for years 1
% through n.
plotLumpsum(n);