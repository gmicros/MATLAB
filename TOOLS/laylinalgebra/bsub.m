function [x,flops]=bsub(A,b)

%BSUB   Backsubstitution.
%       This is a simple backsubstitution routine applied to
%       an upper triangular matrix A with nonzero entries on 
%       the diagonal. The variable flops is used to keep track 
%       of floating point operations as they are performed.
%
%       Formats:   x = bsub(A,b)
%                  [x,flops] = bsub(A,b)   Also provides a flops count.
%
%Written by Rick L. Smith, University of Florida, Gainesville, 5/17/05
%       Version 5/17/05



[x,flops] = bsub(A,b). 

n = size(A,2);
[m,p] = size(b);

if max(max(A-triu(A))) > eps/2
   disp('A is not upper triangular.'),
return,
end

% This is a quick check to see if A is upper
% triangular.

if n ~= m | p ~= 1       
disp('Matrix dimensions are incorrect'),
       return,
end

if all(diag(A)) 

% The function 'all' is best used with binary values.
% It is convenient to use it here as a means to avoid
% division by 0.

x = zeros(n,1);
flops = 0;

x(n) = b(n)/A(n,n); 
flops = flops + 1;

for i = n-1:-1:1
    s = b(i);
    for j = i+1:n
         s = s - A(i,j)*x(j); flops = flops+2;
    end
    x(i) = s/A(i,i); flops=flops + 1;
end

else
   disp('Some entries on the diagonal of A are 0.')
end