% MATLAB script Plot_x_y.m

% This script plots x and y vectors using color and line
% style inputs from the user.

% Create the vectors x and y
x = pi * linspace(0,2,50);
y = sin(x);

% Prompt the user for an input
color = input('Enter a color (red, blue or green): ', 's');
style = input('Enter plot style (circle or star): ', 's');

% Convert the user's color input to the form needed for 
% the plot command
if strcmp(color, 'red')
    col = 'r';
elseif strcmp(color, 'blue')
    col = 'b';
else
    col = 'g';
end

% Convert the user's style input to the form needed for
% the plot command
if strcmp(style, 'circle')
    st = 'o';
else
    st = '*';
end

% Make the string needed for the plot command
pstr = strcat(col,st);

% Plot the function using color and style information from 
% the user
plot(x,y,pstr)


