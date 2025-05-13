% MATLAB Script: ColorDescriptionFourthDimension.m

x = -7.5:0.5:7.5;           % data
[X,Y] = meshgrid(x);        % create plaid data
R = sqrt(X.^2 + Y.^2)+eps;  % create sombrero
Z = sin(R)./R;

subplot(2,2,1)
surf(X,Y,Z,Z)    % default color order
colormap("gray")
shading interp
axis tight off
title('Figure 27.4a: Default, Z')

subplot(2,2,2)
surf(X,Y,Z,Y)   % Y axis color order
shading interp
axis tight off
title('Figure 27.4b: Y axis')

subplot(2,2,3)
surf(X,Y,Z,X-Y) % diagonal color order
shading interp
axis tight off
title('Figure 27.4c: X - Y')

subplot(2,2,4)
surf(X,Y,Z,R) % radius color order
shading interp
axis tight off
title('Figure 27.4d: Radius')

% Laplacian Gradient Plot
figure;
subplot(2,2,1)
surf(X,Y,Z,abs(del2(Z)))  % absolute Laplacian
colormap("gray")
shading interp
axis tight off
title('Figure 27.5a: |Curvature|')

subplot(2,2,2)
[dZdx,dZdy] = gradient(Z);  % compute gradient of surface
surf(X,Y,Z,abs(dZdx))       % absolute slope in x-direction
shading interp
axis tight off
title('Figure 27.5b: |dZ/dx|')

subplot(2,2,3)
surf(X,Y,Z,abs(dZdy))       % absolute slope in y-direction
shading interp
axis tight off
title('Figure 27.5c: |dZ/dy|')

subplot(2,2,4)
dR = sqrt(dZdx.^2 + dZdy.^2);
surf(X,Y,Z,abs(dR))        % absolute slope in radius
shading interp
axis tight off
title('Figure 27.5d: |dR|')