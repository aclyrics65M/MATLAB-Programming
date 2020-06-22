function output = weighted_mean(data_set,weight_set)
% Function output returns the weighted mean of a data set that corresponds
% with a weight set
% Format of call: weighted_mean(data_set, weight_set)
num_sum = 0;
total_weight = 0;

if (length(data_set) ~= length(weight_set))
    disp('Error! The dimensions must agree in size')
else
    for i = 1:length(data_set)
       sample_value = data_set(i)*weight_set(i);
       num_sum = num_sum + sample_value; % Update the num_sum
    end
    
    for j = 1:length(weight_set)
       total_weight = total_weight + weight_set(j); 
    end
    
output = num_sum / total_weight
end
end