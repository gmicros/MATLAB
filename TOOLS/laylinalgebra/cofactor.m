function [dt,flops] = cofactor(A)

%COFACTOR   Computes the determinant using the cofactor expansion. 
%           Always computes along the first row. Assumes A is square
%
%           Formats:    dt = cofactor(A)
%                       [dt,flops] = cofactor(A) Also computes the flop count.
 
%Written by Rick L. Smith, University of Florida, Gainesville, 5/17/05
%       Version 5/17/05


[m,n] = size(A);
if m ~= n
    disp('matrix is not square')
    return
end

flops = 0;
n = size(A,1);
if n == 1, 
   dt = A(1,1); 
else
   sign = 1;
   dt = 0;
   for j = 1:n
      % Find the determinant of the cofactor.
      if j == 1
         [dt1,fl] = cofactor(A([2:n],[2:n]));
      elseif j==n
         [dt1,fl] = cofactor(A([2:n],[1:n-1]));
      else
         [dt1,fl] = cofactor(A([2:n],[1:j-1, j+1:n]));
      end
      % Build the expansion along the 1st row.
      dt = dt + sign*A(1,j)*dt1;
      sign = -1*sign; 
      % Update the flops.Only counts the addition and
      % multiplication not the sign change. 
      flops = flops + fl + 2;
   end
end