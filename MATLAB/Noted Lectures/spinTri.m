function spinTri(X)

% function spinTri(X)
% 
% animate a triangle in various ways. 
%
% To use this function, define the
% coordinates of a triangle (using 2D homogeneous coordinates) in the 
% main workspace. In class we used the command:
%
% X = [-.866 0 .866;-.5 1 -.5;1 1 1]
%
% Then call the function with the command
% 
% spinTri(X)
%

% use our drawTri function to plot the original triangle

drawTri(X);

% turn off hold so when we plot new triangles, they replace the previous
% one

hold off

% set the plotting axis limits. We are going to do this several times, so
% save the limits in a vector. If we decide to change it, we only have to
% do it in one place

axisLimits = [-5 5 -5 5];
axis(axisLimits);

% First we will spin the triangle (which is already centered on the origin)
% about the origin.

% for loop over angles between 5 and 360 degrees in steps of 5 degrees

for a=5:5:360
    
    % build a matrix to rotate clockwise by angle a
    
    R = [cosd(a) -sind(a) 0;
         sind(a) cosd(a)  0;
         0       0        1];
     
    % apply the tranformation using matrix-matrix multiplication (i.e.,
    % there is no "dot" in front of the "*"). This transforms the 
    % coordinates stored in each column of X and puts the result in the
    % corresponding column in XNew. If we had done "R.*X" instead, MATLAB
    % would have multiplied corresponding elements of R and X
    % together--this is a completely different operation and not what we
    % want to do here.
    
    XNew = R*X;
    
    % pass the new coordinates to our drawTri function to update the plot
    
    drawTri(XNew);
    
    % turn hold back off, reset axis limits and pause. Without the pause,
    % the animation will be too fast to see.
    
    hold off
    axis(axisLimits);
    pause(.05);
    
end

% now move the triangle 3 units to the right. To do this, we make another
% transformation matrix (a translation)

T = [1 0 3;
     0 1 0;
     0 0 1];
    
% apply the transformation

XNew = T*X;

% redraw

drawTri(XNew)
hold off
axis(axisLimits);
pause(.05);
    
% now make the translated triangle orbit the origin. This code is almost
% the same as the previous rotation code, but because we are rotating the
% object stored in XNew, we need another array to hold the rotated
% coordinates (XNewNew).

for a=5:5:360
    
    % make rotation matrix
    
    R = [cosd(a) -sind(a) 0;
         sind(a) cosd(a)  0;
         0       0        1];
    
    % apply transform
    
    XNewNew = R*XNew;
    
    % redraw
    
    drawTri(XNewNew);
    hold off
    axis(axisLimits);
    pause(.05);
    
end

% Now spin the translated triangle in place. Because rotation is about the
% origin, to do this, we translate the
% object to the origin, spin it, then translate it back

for a=5:5:360
    
    % rotation matrix
    
    R = [cosd(a) -sind(a) 0;
         sind(a) cosd(a)  0;
         0       0        1];

    % translation matrix to move object to origin
    
    T1 = [1 0 -3;
          0 1 0;
          0 0 1];
     
    % translation matrix to put object back. This is the matrix inverse of
    % T1, which can be computed with inv(T1)
    
    T2 = [1 0 3;
          0 1 0;
          0 0 1];

    % build the composite transformation that does all three operations in
    % one step. The order that we multiply the matrices together matters!
    % You learned (or will learn) in linear algebra that when multiplying
    % matrices, A*B ~= B*A. But A*(B*C) == (A*B)*C. The operation we are
    % trying to do is T2*(R*(T1*XNew)). In other words, translation1,
    % followed by rotation, followed by translation2. Because we can
    % regroup, this is the same as (T2*R*T1)*XNew or C*XNew
    
    C = T2*R*T1;
       
    % apply composite transformation
    
    XNewNew = C*XNew;
    
    % redraw
    
    drawTri(XNewNew);
    hold off
    axis(axisLimits);
    pause(.05);
    
end
