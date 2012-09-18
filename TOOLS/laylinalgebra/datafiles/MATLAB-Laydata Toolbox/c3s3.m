% data for Exercise Set 3.3

ex = input('Exercise number (1-6, 11-16, 19-24, 27, 28)? ');

if ex==1
   A = [5 7;2 4], b = [3;1] 
elseif ex==2
   A = [4 1;5 2], b = [6;7] 
elseif ex==3
   A = [3 -2;-5 6], b = [7;-5] 
elseif ex==4
   A = [-5 3;3 -1], b = [9;-5] 
elseif ex==5
   A = [2 1 0;-3 0 1;0 1 2], b = [7;-8;-3] 
elseif ex==6
   A = [2 1 1;-1 0 2;3 1 3], b = [4;2;-2] 
elseif ex==11
   A = [0 -2 -1;3 0 0;-1 1 1] 
elseif ex==12
   A = [1 1 3;2 -2 1;0 1 0] 
elseif ex==13
   A = [3 5 4;1 0 1;2 1 1] 
elseif ex==14
   A = [3 6 7;0 2 1;2 3 4] 
elseif ex==15
   A = [3 0 0;-1 1 0;-2 3 2] 
elseif ex==16
   A = [1 2 4;0 -3 1;0 0 3] 
elseif ex==19
   v1 = [0;0], v2 = [5;2], v3 = [6;4], v4 = [11;6] 
elseif ex==20
   v1 = [0;0], v2 = [-1;3], v3 = [4;-5], v4 = [3;-2] 
elseif ex==21
   v1 = [-1;0], v2 = [0;5], v3 = [1;-4], v4 = [2;1] 
elseif ex==22
   v1 = [0;-2], v2 = [6;-1], v3 = [-3;1], v4 = [3;2] 
elseif ex==23
   v1 = [1;0;-2], v2 = [1;2;4], v3 = [7;1;0] 
elseif ex==24
   v1 = [1;4;0], v2 = [-2;-5;2], v3 = [-1;2;-1] 
elseif ex==27
   b1 = [-2;3], b2 = [-2;5], A = [6 -2;-3 2] 
elseif ex==28
   b1 = [4;-7], b2 = [0;1], A = [7 2;1 1] 
else
   disp('No data for this exercise in Section 3.3.')
end
