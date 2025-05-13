% MATLAB Program involving Inverse Trigonometric Functions

% List of Inverse Trigonometric functions and their results
%x = 0.561672;
% y = 2.5;

x = input('Enter the value of x: ');
y = input('Enter the value of y: ');

% Acos (Inverse Cosine in radians)
inverse_cosine = acos(x);

% Acosd (Inverse Cosine in degrees)
inverse_cosine_deg = acosd(x);

% Acosh (Inverse Hyperbolic Cosine in radians)
inverse_cosine_hyperbolic = acosh(x);

fprintf('Acos is: %5.4f\n', inverse_cosine);
fprintf('Acosd is: %5.4f\n', inverse_cosine_deg);
fprintf('Acosh is: %5.4f\n', inverse_cosine_hyperbolic);
fprintf('\n');

% Acot (Inverse Cotangent in radians)
inverse_cotangent = acot(x);

% Acotd (Inverse Cotangent in degrees)
inverse_cotangent_deg = acotd(x);

% Acoth (Inverse Hyerbolic Cotangent in radians)
inverse_cotangent_hyperbolic = acoth(x);

fprintf('Acot is: %5.4f\n', inverse_cotangent);
fprintf('Acotd is: %5.4f\n', inverse_cotangent_deg);
fprintf('Acoth is: %5.4f\n', inverse_cotangent_hyperbolic);
fprintf('\n');

% Acsc (Inverse Cosecant in radians)
inverse_cosecant = acsc(x);

% Acscd (Inverse Cosecant in degrees)
inverse_cosecant_deg = acscd(x);

% Acsch (Inverse Hyperbolic Cosecant in radians)
inverse_cosecant_hyperbolic = acsch(x);

fprintf('Acsc is: %5.4f\n', inverse_cosecant);
fprintf('Acscd is: %5.4f\n', inverse_cosecant_deg);
fprintf('Acsch is: %5.4f\n', inverse_cosecant_hyperbolic);
fprintf('\n');

% Asec (Inverse Secant in radians)
inverse_secant = asec(x);

% Asecd (Inverse Secant in degrees)
inverse_secant_deg = asecd(x);

% Asech (Inverse Hyperbolic Secant in radians)
inverse_secant_hyperbolic = asech(x);

fprintf('Asec is: %5.4f\n', inverse_secant);
fprintf('Asecd is: %5.4f\n', inverse_secant_deg);
fprintf('Asech is: %5.4f\n', inverse_secant_hyperbolic);
fprintf('\n');

% Asin (Inverse Sine in radians)
inverse_sine = asin(x);

% Asind (Inverse Sine in degrees)
inverse_sine_deg = asind(x);

% Asinh (Inverse Hyperbolic Sine in radians)
inverse_sine_hyperbolic = asinh(x);

fprintf('Asin is: %5.4f\n', inverse_sine);
fprintf('Asind is: %5.4f\n', inverse_sine_deg);
fprintf('Asinh is: %5.4f\n', inverse_sine_hyperbolic);
fprintf('\n');

% Atan (Inverse Tangent in radians)
inverse_tangent = atan(x);

% Asind (Inverse Tangent in degrees)
inverse_tangent_deg = atand(x);

% Asinh (Inverse Hyperbolic Tangent in radians)
inverse_tangent_hyperbolic = atanh(x);

% Atan2 (Four-Quadrant Inverse Tangent in radians)
four_quadrant_inverse_tangent = atan2(y,x);

fprintf('Atan is: %5.4f\n', inverse_tangent);
fprintf('Atand is: %5.4f\n', inverse_tangent_deg);
fprintf('Atanh is: %5.4f\n', inverse_tangent_hyperbolic);
fprintf('Atan2 is: %5.4f\n', four_quadrant_inverse_tangent);
fprintf('\n');








