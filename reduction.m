function [matrix] = reduction(A)

[rows cols] = size(A);
A = pivot_function(A);

%scales the first pivot to unity 
if A(1,1) ~= 1
    a = A(1,:);
    scale = 1/A(1,1);
    pivot = scale * a;
    A(1,:) = pivot; 
end 

matrix = zeroing(A);