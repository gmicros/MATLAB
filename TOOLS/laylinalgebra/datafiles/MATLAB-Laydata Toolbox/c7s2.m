% data for Exercise Set 7.2

ex = input('Exercise number (1,2,7-20)? ');

if ex==1
   A = [5 1/3;1/3 1], x = [6;1], y = [1;3] 
elseif ex==2
   A = [4 3 0;3 2 1;0 1 1], x = [2;-1;5], y = [1/sqrt(3);1/sqrt(3);1/sqrt(3)] 
elseif ex==7
   A = [1 5;5 1] 
elseif ex==8
   A = [9 -4 4;-4 7 0;4 0 11] 
elseif ex==9
   A = [3 -2;-2 6] 
elseif ex==10
   A = [9 -4;-4 3] 
elseif ex==11
   A = [2 5;5 2] 
elseif ex==12
   A = [-5 2;2 -2]  
elseif ex==13
   A = [1 -3;-3 9] 
elseif ex==14
   A = [8 3;3 0] 
elseif ex==15
   A = [-2 2 2 2;2 -6 0 0;2 0 -9 3;2 0 3 -9]
elseif ex==16
   A = [4 3/2 0 -2;3/2 4 2 0;0 2 4 3/2;-2 0 3/2 4]
elseif ex==17
   A = [1 4.5 0 -6;4.5 1 6 0;0 6 1 4.5;-6 0 4.5 1]
elseif ex==18
   A = [11 -6 -6 -6;-6 -1 0 0;-6 0 0 -1;-6 0 -1 0]
elseif ex==19
   A = [5 0;0 8]
elseif ex==20
   A = [5 0;0 -3]
else
   disp('No data for this exercise in Section 7.2.')
end
