% MATLAB Script: TransparencySpherePlot.m

subplot(2,2,1)
sphere
axis square off
alpha(0)
title({'Figure 27.6a:','Transparent, alpha = 0'})

subplot(2,2,2)
sphere
axis square off
alpha(1)
title({'Figure 27.6b:','Opaque, alpha = 1'})

subplot(2,2,3)
sphere
axis square off
alpha(0.5)
title({'Figure 27.6c:','Semi-transparent, alpha = 0.5'})

subplot(2,2,4)
sphere
axis square off
alpha('color')
title({'Figure 27.6d:','Graduated, alpha = "color"'})