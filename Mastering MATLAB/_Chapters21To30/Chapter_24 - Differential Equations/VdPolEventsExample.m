% MATLAB Script: VdPolEventsExample.m

mu = 2;
options = odeset('Events',@vdpolevents);
[t,y,te,ye] = ode45(@vdpol,tspan,yo,options,mu);
plot(t,y,te,ye(:,2),'o')
title('Figure 24.3: van der Pol Solution, |y(2)|=2')