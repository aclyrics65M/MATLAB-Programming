function [message] = rid_multiple_blanks(str)
% RID_MULTIPLE_BLANKS Removes multiple blanks between words
% so there is only one space between words
%  Format of call: rid_multiple_blanks(str)
%  Returns a string

message = [];
% Keep looping and grabbing words from the input string
% until there are no words left
while ~isempty(str)
%     Put the remaining portion of the string into str.
%     The delimiter is a space and multiple delimiters in
%     a row are treated as one, so the multiple spaces are
%     eliminated in this step.

     [word str] = strtok(str);
%     Concatenate each word with one trailing blank space
     message = [message,word,blanks(1)];
end

% Remove the final trailing blank space
message = strtrim(message);

end
