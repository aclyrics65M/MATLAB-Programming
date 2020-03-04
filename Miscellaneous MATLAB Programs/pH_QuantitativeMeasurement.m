% Program Script of pH and acid/base concentrations
% Acid/Base concentration quantitative measurement

Kw = 10^-14;

x = input('Do you want to calculate H+ (1) or OH- (2) concentration?: ');

if x == 1
    OH = input('Enter the OH- (hydroxide) concentration: ');
    H = Kw / OH;
    fprintf('The hydrogen ion concentration is: %f\n', H);
elseif x == 2
    H = input('Enter the H+ (hydrogen) concentration: ');
    OH = Kw / H;
    fprintf('The hydroxide ion concentration is: %f\n', OH);
elseif x ~= 1 || 2
    disp('Error! Please pick 1 or 2.');
    x = input('Do you want to calculate H+ (1) or OH- (2) concentration?: ');
end

% Determining Acidity or Basicity
if H > OH
    disp('The solution is acidic');
elseif OH > H
    disp('The solution is basic');
elseif OH == H
    disp('The solution is neutral');
end