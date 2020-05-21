function outph = addAcidity(phvals)
% Determines acidity for solutions and adds
% a field to the phvals structures
% Format of call: addAcidity(vec of solutions structs)
% Returns new vector of structs with acidity field

outph = phvals;

% For-loop (if-else statements)
for i = 1:length(phvals)
    if phvals(i).ph == 7
        outph(i).acidity = 'neutral';
    elseif phvals(i).ph < 7
        outph(i).acidity = 'acidic';
    else
        outph(i).acidity = 'basic';
    end
end

end