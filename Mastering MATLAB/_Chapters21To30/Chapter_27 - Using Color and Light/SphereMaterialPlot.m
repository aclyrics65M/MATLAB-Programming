% MATLAB Script: SphereMaterialPlot.m

% Default Material Sphere Plot
subplot(2,2,1)
sphere
colormap("gray")
light
shading interp
axis square off
material default
title('Figure 27.8a: Default Material')

% Shiny Material Sphere Plot
subplot(2,2,2)
sphere
light
shading interp
axis square off
material shiny
title('Figure 27.8b: Shiny Material')

% Dull Material Sphere Plot
subplot(2,2,3)
sphere
light
shading interp
axis square off
material dull
title('Figure 27.8c: Dull Material')

% Metal Material Sphere Plot
subplot(2,2,4)
sphere
light
shading interp
axis square off
material metal
title('Figure 27.8d: Metal Material')