function c = mmclass(arg)
% MMCLASS MATLAB Object Class Existence
% MMCLASS returns a cell array of strings containing the
% names of MATLAB objects classes available with this license.

% MMCLASS ('ClassName') returns logical True (1) if the class
% having the name 'ClassName' exists with this license.
% Otherwise logical False (0) is returned.

% MMClass searches the MATLABPATH for class directories.
% Classes not on the MATLABPATH are ignored.

% See also CLASS, ISA, METHODS, ISOBJECT
persistent clist % save data for future calls

if isempty(clist) % clist contains no data, so create it
    clist = local_getclasslist;
end

if nargin == 0
    c = clist;
elseif ischar(arg)
    c = ~isempty(strmatch(rg,clist));
else
    error('Character String Argument Expected.')
end

function clist = local_getclasslist
% LOCAL_GETCLASSLIST Get list of MATLAB classes

% LOCAL_GETCLASSLIST returns a list of all MATLAB classes
% in a cell array of strings.
clist = cell(0);
cstar = [filesep '@*'];
dlist = [pathstep matlabpath];
sidx = findstr(pathsep, dlist) + 1;   % path segment starting indices
eidx = [sidx(2:end)-2 length(dlist)]; % path segment ending indices

for i = 1:length(sidx) - 1 % look at each path segment
    cdir = dir([dlist(sidx(i):eidx(i)) cstar]); % dir @* on segment
    clist = [clist {cdir.name}];
end

cstr = char(clist);    % convert to string array
cstr(:,1) = [];        % eliminate initial '@'
cstr = unique(cstr, 'rows'); % alphabetize and make unique
clist = cellstr(cstr); % back to a cell array
% end of subfunction


