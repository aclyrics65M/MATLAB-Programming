% Function program reynolds

reynolds_num = input("Enter a Reynolds number: ");

if reynolds_num <= 2300
    disp('The flow is in Laminar region');
elseif reynolds_num <= 4000 && reynolds_num > 2300
    disp('The flow is in Transition region');
elseif reynolds_num > 4000
    disp('The flow is in Turbulent region');
end
