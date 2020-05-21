% Inventory MATLAB file

% using fscanf, and print total $ amount in inventory
fid = fopen('parts_inv.dat');
if fid == -1
    disp('File open not successful')
else
    % Read in data from file
    data = fscanf(fid,'%d %f %d',[3,inf]);
    cost = data(2,:);
    quantity = data(3,:);
    total = sum(cost .* quantity);
    fprintf('The total amount of inventory is $%.2f\n',total)
    % Error-check file close
    closeresult = fclose(fid);
    if closeresult == 0
        disp('File close successful')
    else
        disp('File close not successful')
    end
end

% Problems to do: 1, 3, 5, 6, 8, 9, 10, 14, 18, 19, 23, 29