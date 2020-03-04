% salescosts.m file

% Matlab script with create a .dat file called costssales.dat
% that stores the company's cost and sales figures for the last n
% quarters (n is not defined ahead of time).

Sales_data = [1100 800; 1233 650; 1111 1001; 1222 1300; 999 1221];

% Save the file with the name costssales.dat in the MATLAB current folder

save costssales.dat Sales_data -ascii


load costssales.dat
[Q c] = size(costssales);

fprintf('There are %d quarters of data in the file\n',Q)

% Graphing the sales and costs data
plot(costssales(:,1),'ko')
hold on
plot(costssales(:,2),'k*')
legend('Costs','Sales')
xlabel('Quarter')
title('Company Costs and Sales')

% Reformat the data and save the data in a new file
New = rot90(costssales);
save newfile.dat New -ascii

