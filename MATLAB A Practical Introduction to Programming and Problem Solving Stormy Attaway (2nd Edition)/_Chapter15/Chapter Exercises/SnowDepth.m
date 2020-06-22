% MATLAB Script
% Chapter 15 Problem 20

% Snow vector
snow_vector = [8 20 31 42 55 65 77 88 95 97 89 72 68 53 44];
save snowd.dat snow_vector -ascii

x = 1:length(snow_vector);
coefs = polyfit(x,snow_vector,2);
quadratic_curve = polyval(coefs,x);

% Plot the Resulting Snow Graph
plot(x,snow_vector,'bo',x,quadratic_curve,'b')
xlabel('Number of Weeks')
ylabel('Snow Depth in Inches')
title('Snow Gone Week 18')
axis([0 18 0 100])