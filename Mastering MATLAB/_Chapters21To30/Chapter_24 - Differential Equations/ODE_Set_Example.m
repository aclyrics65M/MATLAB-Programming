% MATLAB Script: ODE_Set_Example.m

tspan = [0 20];     % set time span to solve
yo = [2; 0];        % initial conditions
mu = 10;            % parameter mu
options = odeset('AbsTol',1e-12,'RelTol',1e-6);

[t,y] = ode45(@vdpol,tspan,yo,[],mu);  % default tolerances
length(t)

[t,y] = ode45(@vdpol,tspan,yo,options,mu);  % tight tolerances
length(t)

[t,y] = ode15s(@vdpol,tspan,yo,[],mu);  % new solver, default tols
length(t)

[t,y] = ode15s(@vdpol,tspan,yo,options,mu);  % new solver, tight tols
length(t)