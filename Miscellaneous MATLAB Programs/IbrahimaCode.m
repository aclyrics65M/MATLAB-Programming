% Ibrahima Brah MATLAB code

lo = input('Please enter your minimum value: ');
la = input('Please enter your maximum value: ');

while la < lo
    la = input('Error! Please enter a value greater than the minimum one: ');
end

in = input('Now enter your choice in this range: ');

while in < lo || in > la
   in = input('Error! Value entered is not within given range: '); 
end

n=1;

r=randi([lo la],1,1);

while r~=in
    n=n+1;
    r =randi([lo la],1,1);
end

fprintf('it took %d tries to generate your number of %d \n', n, r)