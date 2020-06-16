% MATLAB script: ftocmenu.m

choice = menu('Choose output mode','Screen','File');
if choice == 2
    fid = fopen('yourfilename.dat','w');
    tempcon(fid)
    fclose(fid);
else
    tempcon
end