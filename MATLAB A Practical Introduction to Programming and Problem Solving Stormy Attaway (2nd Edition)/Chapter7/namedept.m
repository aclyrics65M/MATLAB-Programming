function output_string = namedept(name, dept)
% Function namedept takes two strings as inputs
% It returns the first two letters of the first string
% and concatenates it with the last two letters of the second string
% It capitalizes all letters

first_segment = name(1:2);
second_segment = dept(end-1:end);

combined_string = strcat(first_segment,second_segment);
output_string = upper(combined_string);

end