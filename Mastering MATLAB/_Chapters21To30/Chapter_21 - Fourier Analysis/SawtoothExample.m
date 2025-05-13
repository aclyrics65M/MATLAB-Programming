% MATLAB Script: SawtoothExample.m

% Variables/Parameters
N = 25;                 % number of harmonics
To = 0.2;               % choose period

n = 2*N;                % number of terms to consider in the discrete Fourier transform
t = linspace(0,To,n+1); % (n+1)th point is one period away
t(end) = [];            % throw away undesired last point
f = sawtooth(t,To);     % compute sawtooth

Fn = fft(f);            % compute FFT (Fast-Fourier Transform)
Fn = [conj(Fn(N+1)) Fn(N+2:end) Fn(1:N+1)] % rearrange values
Fn = Fn/n;              % scale results

% Compute the trigonometric Fourier series coefficients
A0 = Fn(N+1)  % DC component
An = 2*real(Fn(N+2:end))  % Cosine terms
Bn = -2*imag(Fn(N+2:end)) % Sine terms

idx = -N:N;            % harmonic indices
Fna = 5j./(idx*pi);    % complex exponential terms
Fna(N+1) = 5;

Bna = -2*imag(Fna(N+2:end));  % sine terms
Bn_error = (Bn-Bna)./Bna      % relative error

% Plotting the Sawtooth Harmonic Content
stem(idx,abs(Fn))        % Stem Plot
xlabel('Harmonic Index')
title('Figure 21.3: Sawtooth Harmonic Content')
axis tight