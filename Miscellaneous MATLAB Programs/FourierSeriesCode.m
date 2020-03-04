 tMax = 20; % 4 periods
 t = 0:0.05:tMax; 
 nMax = 10; % order of the fourier series.
 y = 2/5; %signal offset
 for n = 1:nMax
     y = y+2*sin(2*pi*n/5)*cos(2*pi*n*t/5)/n/pi; % sum all contributions
 end
 figure;
 plot(t,y,'r');
 hold on;
 %Rectangular wave by looking at the function.
 t0 = [0,0.999,1]; % first half wave
 x0 = [1,1,0]; 
 nPeriods = 4
 t1 = [4,4.001,5.999,6];
 t = [t0,t1];
 x1 = [0 1 1 0];
 x = [x0,x1];
 for periodI = 3:nPeriods % first two periods by hand
     t = [t,t1+5*(nPeriods-2)];
     x = [x,x1];
 end
 plot(t,x,'k');
