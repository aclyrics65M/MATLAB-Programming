% Volume of a sphere
radius_i = 3.75;
radius_o = 5.25;

sphere_vol = (4*pi/3) * ( (radius_o^3) - (radius_i^3) );

fprintf('The volume of a sphere with an inner radius of %.2f\n', radius_i) 
fprintf('and outer radius of %.2f is %.2f\n', radius_o, sphere_vol);