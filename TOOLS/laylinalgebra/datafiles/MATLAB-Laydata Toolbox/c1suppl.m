% data for Chapter 1 Supplementary Exercises

ex = input('Exercise number (6, 23-25)? ');

if ex==6 
   M = [4 -2 7 -5;8 -3 10 -3] 
elseif ex==23
   M = [4 -3 5;3 4 0]
   disp('Make sure you understand why this matrix is useful.')
elseif ex==24
   M = [2 -4 2*sqrt(5);4 2 0]
   disp('Make sure you understand why this matrix is useful.')
elseif ex==25
   A = [3;7;8], B = [4;4;8], C = [5;3;9], Y = [66;74;136]
else
   disp('No data for this supplementary exercise, Chapter 1.')
end
