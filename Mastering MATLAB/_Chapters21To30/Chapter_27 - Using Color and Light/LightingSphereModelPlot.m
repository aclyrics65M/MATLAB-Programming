% MATLAB Script: LightingSphereModelPlot.m

% No Lighting Sphere Plot
subplot(2,2,1)
sphere
light
shading interp
axis square off
lighting none
title('Figure 27.7a: No Lighting')

% Flat Lighting Sphere Plot
subplot(2,2,2)
sphere
light
shading interp
axis square off
lighting flat
title('Figure 27.7b: Flat Lighting')

% Gouraud Lighting Sphere Plot
subplot(2,2,3)
sphere
light
shading interp
axis square off
lighting gouraud
title('Figure 27.7c: Gouraud Lighting')

% Phong Lighting Sphere Plot
subplot(2,2,4)
sphere
light
shading interp
axis square off
lighting phong
title('Figure 27.7d: Phong Lighting')