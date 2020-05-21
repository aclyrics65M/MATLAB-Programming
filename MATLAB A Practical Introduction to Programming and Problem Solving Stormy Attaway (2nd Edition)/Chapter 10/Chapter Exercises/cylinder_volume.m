function vol = cylinder_volume(radius, height)
% Function cylinder_volume calculates the volume of a cylinder.
% It returns the volume of a cylinder by inputting two variables which
% are the radius and height. It is a nested function
% Format of call: cylinder_volume(radius, height) 

    % Inner function area
    function A = area
       A = pi*(radius^2); 
    end

vol = area * height;
fprintf('The volume of the cylinder is: %0.3f\n',vol);

end