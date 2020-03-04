% salesfig.m

% This reads the quarter and sales data for the XYZ Corporation
% and plots them on a graph

load salesfigs.dat

% Separate the contents of the file into two vectors
x = 1:4;
vector_one = salesfigs(1,:);
vector_two = salesfigs(2,:);

plot(x,vector_one,'o')
hold on
plot(x,vector_two,'*')
xlabel('Quarter')
ylabel('Sales (billions)')
title('XYZ Corporation Sales: 2010')
legend('Division 1', 'Division 2')
axis([1 4 1.2 3])