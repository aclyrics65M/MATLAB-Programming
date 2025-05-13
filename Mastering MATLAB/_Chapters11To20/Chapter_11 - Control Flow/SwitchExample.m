% MATLAB program: SwitchExample.m

x = 2.7;
units = 'm';

switch units % convert x to centimeters
    case {'inch','in'}
        y = x*2.54;
    case {'feet','ft'}
        y = x*2.54*12;
    case {'meter','m'}
        y = x/100;
    case {'millimeter','mm'}
        y = x*10;
    case {'centimeter','cm'}
        y = x;
    otherwise
        disp(['Unknown Units: ' units])
        y = nan;
end

