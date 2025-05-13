% MATLAB Script: IntegrationExample.m

x = -1:0.17:2;
y = humps(x);
area = trapz(x,y)

x = linspace(-1,2,100);
y = humps(x);
format long
area = trapz(x,y)
