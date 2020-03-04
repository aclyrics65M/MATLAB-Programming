% Temperature conversion

Temp_Celsius = input('Enter the temp in degrees C: ');
Letter = input('Do you want K or F? ', 's');
L = num2str(Letter);

% While loop
while (L ~= 'K' && L ~= 'F')
   fprintf('Error! Please enter K or F!\n');
   L = input("Do you want K or F? ");
end

if L == 'F'
    Temp_Fahren = (9/5)*(Temp_Celsius) + 32;
    fprintf('The Temp in degrees F is %0.1f\n', Temp_Fahren);
elseif L == 'K'
    Temp_Kelvin = Temp_Celsius + 273.15;
    fprintf('The Temp in degrees K is %0.1f\n', Temp_Kelvin);
end


 