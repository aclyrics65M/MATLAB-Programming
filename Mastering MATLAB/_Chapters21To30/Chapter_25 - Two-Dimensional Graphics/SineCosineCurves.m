% MATLAB Script: SineCosineCurves.m

x = linspace(0,2*pi,30);
y = sin(x);
z = cos(x);
plot(x,y,x,z)
box off                               % turn off the axes box
xlabel('Independent Variable X')      % label horizontal axis
ylabel('Dependent Variables Y and Z') % label vertical axis
title('Figure 25.5: Sine and Cosine Curves, No Box') % title

% Plotting with grid and box on
figure;
plot(x,y,x,z)
grid on, box on % turn axes box and grid lines on
text(2.5,0.7,'sin(x)')
title('Figure 25.6: Sine and Cosine Curves, Added Label')

% Fixed Axis Plotting
figure;
plot(x,y)
title('Figure 25.7: Fixed Axis Scaling')
axis([0 2*pi -1.5 2]) % change axis limits