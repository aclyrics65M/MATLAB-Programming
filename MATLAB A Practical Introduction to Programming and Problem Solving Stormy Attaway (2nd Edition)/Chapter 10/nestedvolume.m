function outvol = nestedvolume(len,wid,ht)
% nestedvolume receives the length, width, and
% height of a cube and returns the volume; it calls
% a nested function that returns the area of the base
% Format: nestedvolume(length,width,height)

outvol = base * ht;
    
    function outbase = base
    % returns the areaof the base
    outbase = len * wid;
    end % base function

end % nestedvolume function