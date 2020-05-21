% MATLAB Script to Plot 3D Parametrized Surfaces

% Vector Calculus (4th Edition) by Susan J. Colley
% Chapter 7 Miscellaneous Exercises Problem 1

% Initial variables
syms s t

% Regular Default variables
smin = -10;
smax = 10;
tmin = -10;
tmax = 10;
range_vector = [smin, smax, tmin, tmax];

% Trigonometric variables
smin_trig = -4*pi;
smax_trig = 4*pi;
tmin_trig = -4*pi;
tmax_trig = 4*pi;
range_vector_trig = [smin_trig, smax_trig, tmin_trig, tmax_trig];

% A.) X(s,t) = (t(s^2 - t^2), s, s^2 - t^2)
x = t.*((s.^2) - (t.^2));
y = s;
z = (s.^2) - (t.^2);
figure;
fsurf(x,y,z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Parametric Surface Part A');

% B.) X(s,t) = (s cost, s sint, s)
x = s*cos(t);
y = s*sin(t);
z = s;
figure;
fsurf(x,y,z); %,[smin, smax, tmin_trig, tmax_trig]);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Parametric Surface Part B');

% C.) X(s,t) = ( (2 + cos s)cos t, (2 + cos s)sint, t + sins)
x = (2 + cos(s))*cos(t);
y = (2 + cos(s))*sin(t);
z = t + sin(s);
figure;
fsurf(x,y,z); %,[smin_trig, smax_trig, -5, 15]);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Parametric Surface Part C');

% D.) X(s,t) = (sin s cost, s, sin s sin t)
x = sin(s).*cos(t);
y = s;
z = sin(s).*sin(t);
figure;
fsurf(x,y,z); %,range_vector);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Parametric Surface Part D');

% E.) X(s,t) = (cost + 0.1t(cost cos s + (1/sqrt(5))sint sin s), sint +
% 0.1t(sint cos s - (1/sqrt(5))*cost sins), (t/2) + (0.2t/sqrt(5))sins)
x = cos(t) + 0.1.*t.*(cos(t).*cos(s) + (1/sqrt(5)).*sin(t).*sin(s));
y = sin(t) + 0.1.*t.*(sin(t).*cos(s) - (1/sqrt(5)).*cos(t).*sin(s));
z = (t./2) + (0.2.*t)/(sqrt(5)).*sin(s);
figure;
fsurf(x,y,z); %,range_vector_trig);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Parametric Surface Part E');

% F.) X(s,t) = (s cost, s sint, t)
x = s.*cos(t);
y = s.*sin(t);
z = t;
figure;
fsurf(x,y,z);%,range_vector);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Parametric Surface Part F');








