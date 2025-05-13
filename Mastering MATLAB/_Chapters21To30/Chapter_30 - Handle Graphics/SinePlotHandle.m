% MATLAB Script: SinePlotHandle.m

x = -2*pi:pi/40:2*pi;   % create data
y = sin(x);             % fine sine of x
Hls_sin = plot(x,y)     % plot sine and save lineseries handle

set(Hls_sin,'Color',[1 0.5 0],'LineWidth',3) % Change color and width