% data for Exercise Set 7.1

ex = input('Exercise number (1-24, 33,34, 37-40)? ');

if ex==1
   A = [3 5;5 -7] 
elseif ex==2
   A = [-3 5;-5 3] 
elseif ex==3
   A = [2 2;4 4] 
elseif ex==4
   A = [0 8 3;8 0 -2;3 -2 0] 
elseif ex==5
   A = [-6 2 0;0 -6 2;0 0 -6] 
elseif ex==6
   A = [1 2 1 2;2 1 2 1;1 2 1 2] 
elseif ex==7
   A = [.6 .8;.8 -.6] 
elseif ex==8
   A = [1/sqrt(2) -1/sqrt(2);1/sqrt(2) 1/sqrt(2)] 
elseif ex==9
   A = [-5 2;2 5] 
elseif ex==10
   A = [-1 2 2;2 -1 2;2 2 -1] 
elseif ex==11
   A = [2/3 2/3 1/3;0 1/sqrt(5) -2/sqrt(5);sqrt(5)/3 -4/sqrt(45) -2/sqrt(45)] 
elseif ex==12
   A = [.5 .5 -.5 -.5;-.5 .5 -.5 .5;.5 .5 .5 .5;-.5 .5 .5 -.5] 
elseif ex==13
   A = [3 1;1 3] 
elseif ex==14
   A = [1 5;5 1] 
elseif ex==15
   A = [16 -4;-4 1] 
elseif ex==16
   A = [-7 24;24 7] 
elseif ex==17
   A = [1 1 3;1 3 1;3 1 1] 
elseif ex==18
   A = [-2 -36 0;-36 -23 0;0 0 3] 
elseif ex==19
   A = [3 -2 4;-2 6 2;4 2 3] 
elseif ex==20
   A = [7 -4 4;-4 5 0;4 0 9] 
elseif ex==21
   A = [4 1 3 1;1 4 1 3;3 1 4 1;1 3 1 4] 
elseif ex==22
   A = [2 0 0 0;0 1 0 1;0 0 2 0;0 1 0 1] 
elseif ex==23
   A = [3 1 1;1 3 1;1 1 3], v = [-1;1;0] 
elseif ex==24
   A = [5 -4 -2;-4 5 2;-2 2 2], v1 = [-2;2;1], v2 = [1;1;0] 
elseif ex==33
   A = [6 -2 -1;-2 6 -1;-1 -1 5]
elseif ex==34
   A = [3 -2 4;-2 6 2;4 2 3]
elseif ex==37
   A = [5 2 9 -6;2 5 -6 9;9 -6 5 2;-6 9 2 5]
elseif ex==38
   A = [.38 -.18 -.06 -.04;-.18 .59 -.04 .12;-.06 -.04 .47 -.12;
       -.04 .12 -.12 .41]
elseif ex==39
   A = [.31 .58 .08 .44;.58 -.56 .44 -.58;.08 .44 .19 -.08;.44 -.58 -.08 .31]
elseif ex==40
   A = [10 2 2 -6 9;2 10 2 -6 9;2 2 10 -6 9;-6 -6 -6 26 9;9 9 9 9 -19]
else
   disp('No data for this exercise in Section 7.1.')
end
