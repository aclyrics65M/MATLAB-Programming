function playsound(caind, varargin)
% This function plays a sound from the cell array
% of mat-file names
% Format playsound(index into cell array) or
% playsound(index into cell array, frequency)
% Does not return any values

soundarray = {'chirp','gong','laughter','splat','train'};
if caind < 1 || caind > length(soundarray)
    caind = length(soundarray);
end
mysound = soundarray{caind};
eval(['load ' mysound])

% Fill in the rest
if nargin == 2
    Fs = varargin{1};
end

fprintf('You are about to hear %s at frequency %.1f\n',...
mysound,Fs)
sound(y,Fs)
end