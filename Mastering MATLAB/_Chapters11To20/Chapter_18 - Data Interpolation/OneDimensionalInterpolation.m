% MATLAB Script: OneDimensionalInterpolation.m

% Define variables x1 and x2
x1 = linspace(0,2*pi,60);
x2 = linspace(0,2*pi,6);

% Plotting the Data Interpolation
plot(x1,sin(x1),x2,sin(x2),'--')
xlabel('x')
ylabel('sin(x)')
title('Figure 18.1: Linear Interpolation')

% Human Hearing Section
% Data for threshold of audibility
Hz = [20:10:100 200:100:1000 1500 2000:1000:10000]; % Frequencies in Hertz
spl = [76 66 59 54 49 46 43 40 38 22 ... % sound pressure level in dB
       14 9 6 3.5 2.5 1.4 0.7 0 -1 3 ...
       -8 -7 -2 2 7 9 11 12];

% Plotting the Audbility Data
figure;
semilogx(Hz,spl,'-o')
xlabel('Frequency, Hz')
ylabel('Relative Sound Pressure Level, dB')
title('Figure 18.2: Threshold of Human Hearing')
grid on

% Additional plotting
Hzi = linspace(2e3,5e3); % look closely near minimum
spli = interp1(Hz,spl,Hzi,'spline'); % interpolate near minimum
i = find(Hz>=2e3 & Hz<=5e3); % find original data indices near minimum

figure;
semilogx(Hz(i),spl(i),'--o',Hzi,spli) % plot old and new data
xlabel('Frequency, Hz')
ylabel('Relative Sound Pressue Level, dB')
title('Figure 18.3: Theshold of Human Hearing')
grid on