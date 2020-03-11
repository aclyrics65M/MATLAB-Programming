% MATLAB script prtflens.m 

for i = 1:3
    lenf = lenprompt();
    leni = convert_f_to_i(lenf);
    printlens(lenf,leni);
end