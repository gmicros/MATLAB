function P = randstoc(n)
%
%RANDSTOC  Creates a random nxn stochastic matrix
%
%        Format:  P = randstoc(n)
%
% The name of this function was changed to randomstoc after the text
% was printed in 6/02.  This file will be phased out in 2004.


M = rand(n);
P = M./(ones(n,1)*sum(M));
