function drawTri(X)

% function drawTri(X)
%
% This block of comments will be echoed to the command window when you
% type "help drawTri". The block should repeat the function line so the
% user can see what the input and output arguments are and should briefly
% explain what the function does and how to use it. For example:
%
% Draw a stick figure of a triangle. The vertices of the triangle are given
% in the input array X. Each column of X contains the coordinates of one
% vertex. x-coordinates are in the first row, y-coordinates are in the
% second row, the third row may contain all 1s (for homogeneous
% coordinates), but does not have to. 

% plot the vertices as blue circles. The first argument to plot is a vector
% of x-coordinates (i.e., to 1 row of X) and the second argument is a 
% vector of y-coordinates.

plot(X(1,:),X(2,:),'bo')

% turn on hold so result of first plot command does not get erased.

hold on

% Now plot red lines connecting vertices. We specify coordinates so that we
% draw lines between the 1st and 2nd vertices, the 2nd and 3rd, and the 3rd
% and 1st vertices

plot(X(1,[1 2 3 1]),X(2,[1 2 3 1]),'r-')

% set the coorinate density of the x and y axes the same (e.g., so that
% if we plotted a square, it would look like a square and not a triangle.

axis equal