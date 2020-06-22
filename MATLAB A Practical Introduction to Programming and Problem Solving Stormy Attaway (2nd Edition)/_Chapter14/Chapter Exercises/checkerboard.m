% MATLAB Script
% Chapter 14 Problem 8

% Script that results in checkerboard

checkerMat = eye(2);
rotCheckerMat = rot90(checkerMat);
imCheckerBoard = repmat(rotCheckerMat,4,4);

% Setting Initial values

[r c h] = size(imCheckerBoard);

for i = 1:r
    for j = 1:c
        for k = 1:h
            if imCheckerBoard(i,j) == 0
                % Black Tiles
                imCheckerBoard(i,j,k) == (0:0:0);
            elseif imCheckerBoard(i,j) == 1
                % White Tiles
                imCheckerBoard(i,j,k) ==(255:255:255);
            end
        end
    end
end

CheckerBoard = uint8(imCheckerBoard);
image(CheckerBoard)