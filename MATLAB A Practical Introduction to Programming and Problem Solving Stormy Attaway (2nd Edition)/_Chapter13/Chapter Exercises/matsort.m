function A = matsort( M )
% MATSORT Sorts all elements of Matrix M and then returns 
% sorted matrix. Elements are sorted in ascending order
% column wise.
% Format of call: matsort(M)
% Returns a matrix

% Get the size of Matrix M
[r c] = size(M);

% Use linear indexing to treat M as a vector built column
% wise. Sort that vector. Then reshape it back into the original size.
A = reshape(sort(M(1:numel(M))),r,c);

end