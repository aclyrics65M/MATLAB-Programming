function fitLineWidth(x,y)
% Plots data points with order 2 and 3
% polynomials fit through them, with line
% widths and color specified
% Format of call: fitLineWidth(x,y)
% Does not return any values

% First subplot
subplot(2,1,1)
coefs = polyfit(x,y,2);
curve = polyval(coefs,x);
plot(x,y,'o',x,curve,'LineWidth',3,'Color',[0.5 0.5 0.5])
title('Second order')

% Second subplot
subplot(2,1,2)
coefs = polyfit(x,y,3);
curve = polyval(coefs,x);
plot(x,y,'o',x,curve,'LineWidth',2, 'Color', [0 0 1])
title('Third order')
end