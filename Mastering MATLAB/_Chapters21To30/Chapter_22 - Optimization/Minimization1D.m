% MATLAB Script: Minimization1D.m

H_humps = @humps;   % create handle to humps.m function.

[xmin,value] = fminbnd(H_humps,0.5,0.8)

options = optimset('Display','iter');
[xmin,value] = fminbnd(H_humps,0.5,0.8,options)

AH_humps = @(x) -1./((x-0.3).^2 + 0.01) - 1./((x-0.9).^2 + 0.04) + 6;
[xmax,value] = fminbnd(AH_humps,0.2,0.4,options)