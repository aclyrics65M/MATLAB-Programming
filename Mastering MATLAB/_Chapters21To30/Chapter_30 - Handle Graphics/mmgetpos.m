% MATLAB file: mmgetpos.m

function p = mmgetpos(H,u,cp)
%MMGETPOS Get Object Position Vector in Specified Units.
% MMGETPOS(H,'Units') returns the position vector associated with the
% graphics object having handle H in the units specified by 'Units'.
% 'Units' is one of: 'pixels', 'normalized', 'points', 'inches', 'cent',
% or 'character'.
% 'Units' equal to 'data' is valid for text objects only.
%
% MMGETPOS does the "right thing", i.e., it: (1) saves the current units,
% (2) sets the units to those requested, (3) gets the position, then
% (4) restores the original units.
%
% MMGETPOS(H,'Units','CurrentPoint') returns the 'CurrentPoint' position
% of the figure having handle H in the units specified by 'Units'.
%
% MMGETPOS(H,'Units','Extent') returns the 'Extent' rectangle of the text
% object having handle H.
%
% 'Uimenu', 'Uicontextmenu', 'image', 'line', 'patch', 'surface',
% 'rectangle' and 'light' objects do NOT have position properties.

if ~ischar(u)
    error('Units Must be a Valid String.')
end

if ~ishandle(H)
    error('H is Not a Valid Handle.')
end

Htype = get(H,'Type');

if nargin==3 && ~isempty(cp) && ischar(cp)

    if strcmp(Htype,'figure') && lower(cp(1))=='c'
        pname = 'CurrentPoint';
    elseif strcmp(Htype,'text') && lower(cp(1))=='e'
        pname = 'Extent';
    else
        error('Unknown Input Syntax.')
    end

elseif H~=0
    pname = 'Position';

elseif H==0 % root object
    pname = 'ScreenSize';

else
    error('Unknown Input Syntax.')
end

hu = get(H,'units'); % get original units
set(H,'units',u)     % set to desired units

p = get(H,pname);    % get position in desired units
set(H,'units',hu)    % set units back to original units