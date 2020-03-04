% This script plots the Kinetic energy of a variety of elements
% The kinetic energy is the difference in energy of photon minues the work
% function of the element

% electron volt
eV = 1.6 * 10^-19;

% Planck's constant (J * s)
h = 6.63 * 10^-34;

% Work functions of several elements:

% Silver
Wag = 4.26 * eV;
% Gold
Wau = 5.1 * eV;
% Copper
Wcu = 4.53 * eV;
% Titanium
Wti = 4.33 * eV;

lam = 0:1e-9:30e-9;
c = 3.0 * 10^8; % c is the speed of light in a vacuum
f = c./lam;

% Kinetic Energies
Kag = (h.*f) - Wag;
Kau = (h.*f) - Wau;
Kcu = (h.*f) - Wcu;
Kti = (h.*f) - Wti;
y = 0;
plot(f,Kag,'b',f,Kau,'r',f,Kcu,'k',f,Kti,'c')
title('Plot of Kinetic Energies of Metals with frequencies')
xlabel('Frequency (Hz)');
ylabel('Kinetic Energy (K.E.) (Joules)')
legend('Silver','Gold','Copper','Titanium',4)