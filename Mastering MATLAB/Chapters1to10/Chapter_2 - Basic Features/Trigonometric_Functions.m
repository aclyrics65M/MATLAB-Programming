% MATLAB Program involving Trigonometric Functions

% List of Trigonometric functions and their results
%x = 56.1672;
%y = 2.5;

x = input('Enter the value of x (in degrees): ');

% Cos (Inverse Cosine in radians)
cosine = cos(x);

% Cosd (Inverse Cosine in degrees)
cosine_deg = cosd(x);

% Acosh (Inverse Hyperbolic Cosine in radians)
cosine_hyperbolic = cosh(x);

fprintf('Cos is: %5.4f\n', cosine);
fprintf('Cosd is: %5.4f\n', cosine_deg);
fprintf('Cosh is: %5.4f\n', cosine_hyperbolic);
fprintf('\n');

% Acot (Inverse Cotangent in radians)
cotangent = cot(x);

% Acotd (Inverse Cotangent in degrees)
cotangent_deg = cotd(x);

% Acoth (Inverse Hyerbolic Cotangent in radians)
cotangent_hyperbolic = coth(x);

fprintf('Cot is: %5.4f\n', cotangent);
fprintf('Cotd is: %5.4f\n', cotangent_deg);
fprintf('Coth is: %5.4f\n', cotangent_hyperbolic);
fprintf('\n');

% Csc (Inverse Cosecant in radians)
cosecant = csc(x);

% Cscd (Inverse Cosecant in degrees)
cosecant_deg = cscd(x);

% Csch (Inverse Hyperbolic Cosecant in radians)
cosecant_hyperbolic = csch(x);

fprintf('Csc is: %5.4f\n', cosecant);
fprintf('Cscd is: %5.4f\n', cosecant_deg);
fprintf('Csch is: %5.4f\n', cosecant_hyperbolic);
fprintf('\n');

% Sec (Inverse Secant in radians)
secant = sec(x);

% Secd (Inverse Secant in degrees)
secant_deg = secd(x);

% Sech (Inverse Hyperbolic Secant in radians)
secant_hyperbolic = sech(x);

fprintf('Sec is: %5.4f\n', secant);
fprintf('Secd is: %5.4f\n', secant_deg);
fprintf('Sech is: %5.4f\n', secant_hyperbolic);
fprintf('\n');

% Asin (Inverse Sine in radians)
sine = sin(x);

% Asind (Inverse Sine in degrees)
sine_deg = sind(x);

% Asinh (Inverse Hyperbolic Sine in radians)
sine_hyperbolic = sinh(x);

fprintf('Sin is: %5.4f\n', sine);
fprintf('Sind is: %5.4f\n', sine_deg);
fprintf('Sinh is: %5.4f\n', sine_hyperbolic);
fprintf('\n');

% Atan (Inverse Tangent in radians)
tangent = tan(x);

% Asind (Inverse Tangent in degrees)
tangent_deg = tand(x);

% Asinh (Inverse Hyperbolic Tangent in radians)
tangent_hyperbolic = tanh(x);

% Atan2 (Four-Quadrant Inverse Tangent in radians)
four_quadrant_inverse_tangent = atan2(y,x);

fprintf('Tan is: %5.4f\n', tangent);
fprintf('Tand is: %5.4f\n', tangent_deg);
fprintf('Tanh is: %5.4f\n', tangent_hyperbolic);

%fprintf('Atan2 is: %5.4f\n', four_quadrant_inverse_tangent);
fprintf('\n');








