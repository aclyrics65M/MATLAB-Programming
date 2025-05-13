% MATLAB Script: EasyPlotting.m

subplot(2,2,1)
fplot(@humps,[-0.5 3])
title('Figure 25.21a: Fplot of the Humps Function')
xlabel('x')
ylabel('humps(x)')

subplot(2,2,2)
f_hdl = @(x) sin(x)/x;
ezplot(f_hdl, [-15,15])
title('Figure 25.21b: sin(x)/x')

subplot(2,2,3)
ezpolar('sin(3*t).*cos(3*t)',[0 pi])
title('Figure 25.21c: ezpolar plot')

subplot(2,2,4)
istr = '(x-2)^2/(2^2) + (y+1)^2/(3^2) - 1';
ezplot(istr,[-2 6 -5 3])
axis square
grid
title(['Figure 25.21d: ' istr])

% Text Formatting
figure;
axis([0 1 0 0.5])
text(0.2,0.1,'\color{blue}\itE = M\cdotC^{\rm2}')
text(0.2,0.2,'\fontsize{16} \nabla \times H = J + \partialD/\partialt')
text(0.2,0.3,'\fontname{courier}\fontsize{16}\bf x_{\alpha}+y^{2\pi}')
fsstr = 'f(t) = A_o + \fontsize{30}_\Sigma\fontsize{10}';
text(0.2,0.4,[fsstr '[A_ncos(n\omega_ot) + B_nsin(n\omega_ot)]'])
title('Figure 25.22: TeX Formatting Examples')