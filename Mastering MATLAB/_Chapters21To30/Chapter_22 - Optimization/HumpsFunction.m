% MATLAB Script: HumpsFunction.m

% Graphical and Computational Display of Humps Function

x = linspace(-0.5,1.5);
y = humps(x);
plot(x,y)
grid on
title('Figure 22.1: Humps Function')

% Formatting and Computation of Humps Function
format long   % display more precision
H_humps = @humps;  % create function handle to humps.m function.

x = fzero(H_humps,1.3)
humps(x)   % how close is it to 0 (zero)?
H_humps(x) % evaluate humps through its handle as well

[x,value] = fzero(H_humps,-0.2)
[x,value] = fzero(H_humps,[-2 0])

options = optimset('Display','iter');  % show iteration history
[x,value] = fzero(H_humps,[-2 0], options)

options = optimset('TolX',0.1);
[x,value] = fzero(H_humps,[-2 0], options)

options = optimset('Display','iter','TolX',0.1); % set both
[x,value] = fzero(H_humps,[-2 0], options)

%[x,value] = fzero(H_humps,[0 1.2])