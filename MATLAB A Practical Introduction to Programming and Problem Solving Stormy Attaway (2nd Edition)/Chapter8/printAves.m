function printAves(student)
% This function prints the average quiz grade
% for each student in the vector of structs

fprintf('%-20s %-10s\n', 'Name', 'Average')
for i = 1:length(student)
    qsum = sum([ student(i).quiz] );
    no_quizzes = length(student(i).quiz);
    ave = qsum/no_quizzes;
    fprintf('%-20s %.1f\n', student(i).name, ave);
end
end