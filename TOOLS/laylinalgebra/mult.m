function [y,flops] = mult(A,x)

%MULT   Multiplication Ax
%       Computes the matrix multiplication Ax using a 
%       column-oriented structure. The flops variable
%       will keep track of the floating point operations 
%       as they are performed.
%
%       Formats: y = mult(A,x)
%                [y,flops] = mult(A,x)   Also provides a flop count.

%Written by Rick L. Smith, University of Florida, Gainesville, 5/17/05
%       Version 5/17/05


[m,n] = size(A);
[k,p] = size(x);
if p ~= 1 | n ~= k
   disp('Matrix dimensions are incorrect.')
end

y = zeros(m,1);
flops = 0;

for i = 1:n,
   for j = 1:m,
         y(j) = y(j) + x(i)*A(j,i);
         flops = flops + 2;
   end
end