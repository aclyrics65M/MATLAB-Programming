% Reads names and weights of patients for an experiment
% Prints in form last, first and then weight
% Calculates and prints average patient weight

fid = fopen('patwts.dat');
if fid == -1
    disp('File open not successful')
else
    i = 0;
    % Store all weights in a vector
    [sys, dias] = strtok(rest);
    dstr = struct('First', fname, 'Last', lname, ...
        'BType', bloodtype, 'Rh', rh, ...
        'BPressure',struct('Systolic', str2double(sys), ...
        'Diastolic', str2double(dias)));
    donors(i) = dstr;
end
for i = 1:length(donors)
    fprintf('%-12s %-12s %4s', donors(i).Last, ...
        donors(i).First, donors(i).BType)
    fprintf('%2s %7.2f %7.2f\n', donors(i).Rh, ...
        donors(i).BPressure.Systolic, ...
        donors(i).BPressure.Diastolic)
end

closeresult = fclose(fid);
if closeresult == 0
    disp('File close successful')
else
    disp('File close not successful')
end
   