% MATLAB Script: CollegeDepartments.m

% Read in department names and enrollments from one file and
% write first 4 chars of names w enrollments to another file

fid = fopen('eng.dat');
if fid == -1
    disp('File open not successful')
else
    % Open a new file for writing
    nfid = fopen('neweng.dat','w');
    while feof(fid) == 0
        aline = fgetl(fid);
        % Separate department names and enrollment
        [dep, num] = strtok(aline);
        num = str2double(num);
        fprintf(nfid, '%s %d\n',dep(1:4),num); % Write to file
    end
    
    % Error-check file close
    closeresult = fclose('all');
    if closeresult == 0
        disp('File close successful')
    else
        disp('File close not successful')
    end
end