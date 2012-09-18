% data for Exercise Set 7.3

ex = input('Exercise number (1-10, 14-17)? ');

if ex==1 | ex==3
   A = [5 2 0;2 6 -2;0 -2 7]  
elseif ex==2 | ex==4
   A = [3 1 1;1 2 2;1 2 2] 
elseif ex==5
   A = [5 -2;-2 5] 
elseif ex==6
   A = [7 3/2;3/2 3] 
elseif ex==7
   A = [-2 2 0;2 -1 2;0 2 0] 
elseif ex==8
   A = [7 -4 -2;-4 1 -4;-2 -4 7] 
elseif ex==9
   A = [7 -1;-1 3] 
elseif ex==10
   A = [-3 -1;-1 5] 
elseif ex==14
   A = [0 1/2 3/2 15;1/2 0 15 3/2;3/2 15 0 1/2;15 3/2 1/2 0]
elseif ex==15
   A = [0 3/2 5/2 7/2;3/2 0 7/2 5/2;5/2 7/2 0 3/2;7/2 5/2 3/2 0]
elseif ex==16
   A = [4 -3 -5 -5;-3 0 -3 -3;-5 -3 0 -1;-5 -3 -1 0]
elseif ex==17
   A = [-6 -2 -2 -2;-2 -10 0 0;-2 0 -13 3;-2 0 3 -13]
else
   disp('No data for this exercise in Section 7.3.')
end
