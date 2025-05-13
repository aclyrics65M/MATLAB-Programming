% Anonymous Functions

af_humps = @(x) 1./((x-.3).^2 + 0.1) + 1./((x-.9).^2 + 0.04) - 6;

z = af_humps([-1 0 1])

