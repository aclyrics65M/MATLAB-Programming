% MATLAB Script: datestring.m

% Define the variable t as now
t = now

% Some examples of variable t in various date string formats
datestr(t)
datestr(t,12)
datestr(t,23)
datestr(t,25)
datestr(t,13)
datestr(t,29)

% Define variable ts and apply datenum function to it
ts = datestr(t)
datenum(ts)
datenum(2011,3,30,16,48,07)
datenum(2011,3,30)