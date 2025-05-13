% MATLAB Program file: example2.m
% Script M-file

erasers = 4; % Number of each item

pads = 6;

tape = input('Enter the number of rolls of tape purchased > ');

items = erasers + pads + tape

cost = erasers*25 + pads*52 + tape*99

average_cost = cost/items