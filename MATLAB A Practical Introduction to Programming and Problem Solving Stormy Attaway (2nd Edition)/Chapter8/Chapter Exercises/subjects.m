% create vector of structures on potential subjects for an
% experiment, calculate ave height and weight, and
% determine and print eligible participants
subject(3) = struct('name','Mary','sub_id',363,'height',5.1,'weight',110);

subject(1) = struct('name','Joey','sub_id',111,'height',6.7,'weight',222.2);

subject(2) = struct('name','Pat','sub_id',221,'height',5.9,...
'weight',165);

%calculate the average height and weight
avgheight = sum([subject.height])/length(subject);
avgweight = sum([subject.weight])/length(subject);

%find and print the eligible participants
disp('Eligible Subjects:')
for i = 1:length(subject)
    if subject(i).height < avgheight || subject(i).weight < avgweight
        fprintf('%s\n',subject(i).name)
    end
end