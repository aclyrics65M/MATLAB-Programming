% Practice Statistics on Vector

% Vector = [1 1 3 6 9];

vector = [1 1 3 6 9];

minimum = min(vector)
maximum = max(vector)

arithmetic_mean = mean(vector)

geometric_mean = @(vector) prod(vector)^(1/length(vector));
geom_mean = geometric_mean(vector)

harmhand = @(vector) length(vector)/sum(1./vector);
harmonic_mean = harmhand(vector)

variance = var(vector)
standard_deviation = std(vector)

mode_vector = mode(vector)
median_vector = median(vector)