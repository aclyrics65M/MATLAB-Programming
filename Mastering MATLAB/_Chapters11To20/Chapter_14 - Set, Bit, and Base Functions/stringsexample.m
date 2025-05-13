% MATLAB script: stringsexample.m

a = 'a string';
b = 'a String';

isequal(a,b) % character string equality

a = {'one' 'two' 'three'};
b = {'one' 'two' 'four'};

isequal(a,b) % cell array equality

isequal(a,a)

c.one = 'one';
c.two = 2;
c.three = pi;
d.two = 2;
d.one = 'one';
d.three = pi;

isequal(c,d) % structure equality
isequal(c,c)

