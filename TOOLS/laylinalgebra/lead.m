function [L,F]=lead(A)

%LEAD   Lead variables of reduced row echelon form
%        Computes the indices of the lead variables.
%
%        Formats:   L = lead(A)
%                   [L,F] = lead(A)   Also lists the indices of
%                                   the free variables.

%Written by Rick L. Smith, University of Florida, Gainesville, 5/17/05
%Based on ref(A) written by David Lay, which was in turn based on
%rref(A) written by Cleve B. Moler.
%        Version 5/17/05

[R,L,F] = ref(A);