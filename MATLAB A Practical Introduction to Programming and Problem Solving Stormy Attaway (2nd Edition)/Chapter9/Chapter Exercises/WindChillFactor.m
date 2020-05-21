% MATLAB Script: WindChillFactor.m

% Write a table of Wind Chill Factors to a file

% Initialize temperature and wind speed vectors
T = -20:5:55;
V = 0:5:55;

% Initialize the WFC table
table = zeros(length(T) + 1, length(V) + 1);
table(1,2:end) = V; % Row header of the table
table(2:end,1) = T; % Column header of the table

% Create the actual WFC table
for i = 1:length(T)
    for j = 1:length(V)
        WCF = 35.7 + 0.6*T(i) - 35.7*(V(j)^0.16) + 0.43*T(i)*(V(j)^0.16);
        table(i+1,j+1) = WCF;
    end
end

% Save the resulting matrix to a .dat file
save wcftable.dat table -ascii