function singvec4(A,step,delay)
% singvec4(A,step,delay)         For MATLAB 4; J. Day, 11/25/96 
% Displays a sequence of orthonormal vectors and  
%       their images under the 2x2 matrix A.  
% Can use as singvec4(A),singvec4(A,step) or singvec4(A,step,delay)

% Uses plot2vec and plotax from Lay's Toolbox
if nargin < 2, step = .1; disp('Default for step is 0.1'), end
t0=input('Enter angle (in radians) for first basis vector: ');
if length(t0)<1, t0=0; end 
% plot axes, circle and declare hold on:
        m = 1.22*norm(A);
        hold off, clg
        hold on
        axis('square'),plotax([-m m -m m])
        ang=0:.09:2*pi; plot(cos(ang),sin(ang))
% initial d1 needed for sign of cosine of angle between columns of A: 
d1 = A(:,1)'*A(:,2); 
for t = t0:step:pi/2
        x = [cos(t);sin(t)]; y = [-sin(t);cos(t)];
                % redraw axes if part might have been erased at last step:
                if (t<step) | (abs(t-(pi/2))-step)
                plotax([-m m -m m])
                end  %if
        plot2vec(x,y,'g',3)
        Ax=A*x;Ay=A*y;
        plot2vec(Ax,Ay,'r',3)
if nargin > 2, pause(delay), end
d2 = Ax'*Ay;
angle = acos(d2/(norm(Ax)*norm(Ay)));
                % display value of angle  
                xlabel(['Angle(Ax,Ay) = ',num2str(angle)])
        if (abs(angle-pi/2) < step) | (sign(d2)~=sign(d1))
        info=['Angle(Ax,Ay) = ' num2str(angle)]; 
        info=[info ' radians, close to pi/2'];
        xlabel(info)
        x=1.15*x;y=1.15*y; Ax=1.15*Ax;Ay=1.15*Ay;
        text(x(1),x(2),'x'),text(y(1),y(2),'y')
        text(Ax(1),Ax(2),'Ax'),text(Ay(1),Ay(2),'Ay')
        pause
        disp(info)
        disp(['angle from x-axis to x is ' num2str(t) ' radians'])
        break, end   %if
plot2vec(x,y,'i',3)
plot2vec(Ax,Ay,'i',3) 
d1 = d2;
end  %for
hold off


