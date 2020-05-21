function tempcon(varargin)
% Tempcon displays on the screen, or writes to a file, a
% list of temperatures converted from Fahrenheit to
% Celsius. If the user passes one argument, a file
% identifier then the output is written to a file. If no arguments
% are passed then the output is sent to the screen.

% Format of call: tempcon(varargin)
% Returns nothing
% Make the Fahrenheit temperature vector
F = [32:10:62];

% Convert degrees F to degrees C. Call a subfunction to do the conversion
for i = 1:length(F)
    C(i) = (5/9)*(F(i) - 32);
    %C(i) = FtoC(F(i));
end

% Make a matrix of F and C temperatures for easy output using fprintf
M = [F;C];

% Display to screen or write to a file depending on if the user passes
% the file identifier, fid.
if nargin == 1
   fid = varargin{1}; 
   fprintf(fid,'%d F is %0.1f C\n',M);
else
   fprintf('%d F is %0.1f C\n',M); 
end

end