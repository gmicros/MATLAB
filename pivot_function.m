function [matrix] = pivot_function(A)

str = 'called';
disp(str);

if  A(1,1) == 0
    [row col] = size(A);
    if row > 1 
        matrix = A;
        matrix([row, 1],:) = A([1, row], :);
        pivot_function(matrix(1:row-1,:));
    end
else
    matrix = A;
end