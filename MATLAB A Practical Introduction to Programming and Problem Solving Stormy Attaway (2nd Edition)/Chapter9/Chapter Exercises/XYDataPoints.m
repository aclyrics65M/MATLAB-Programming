% XYDataPoints.m MATLAB file (This File needs editing!!)

% Read data points from "xypoints.dat" and plot them
fid = fopen('xypoints.dat');
if fid == -1
    disp('File open not successful')
else
    % Initialize x vector and y vector
    xvec = 1:10;
    yvec = 1:10;
    for i = 1:10
        aline = fgetl(fid);
        
        % Separate each line into two parts: x and y
        [x, rest] = strtok(aline,'y');
        x(1:2) = []; %Removes the "x" and the space
        [let, y] = strtok(rest);
        xvec(i) = str2double(x);
        yvec(i) = str2double(y);
    end
    
    plot(xvec,yvec,'ko')
    xlabel('x')
    ylabel('y')
    title('Points from file "xypoints.dat"')
    
    % Error-check file close
    closeresult = fclose(fid);
    if closeresult == 0
        disp('File close successful')
    else
        disp('File close not successful')
    end
end