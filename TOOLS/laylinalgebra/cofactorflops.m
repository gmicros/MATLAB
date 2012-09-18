function m=cofactorflops(n)

% COFACTORFLOPS   Computes the flops required to compute the 
%                 determinant of an n by n matrix using the 
%                 cofactor expansion based on the Laydata function 
%                 cofactor(A).
%
%                 Formats:   m=cofactorflops(n)

%Written by Rick L. Smith, University of Florida, Gainesville, 5/17/05
%       Version 5/17/05

if n == 1
    m = 0;
else
    m = n*(detflops(n - 1) + 2);
end