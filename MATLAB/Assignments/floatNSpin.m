function floatNSpin(rot, zTrans)

% Takes a predefined set of points which coincide with a tetrahedron,
% rotates and translates these points at the same time based on input
% parameters.

x = [-0.866  0 0.866 0; -0.5 1 -0.5 0; 0 0 0 1; 1 1 1 1];
drawStickTetra(x);                                            % Draws the predefined points on a graph

hold off

axisLim = [-1 1 -1 1 -zTrans-1 zTrans+1];   % Sets the limits of the graph used in this function
axis(axisLim);

for a = 5:5:rot
    rotMat = [cosd(a) -sind(a) 0 0;         % The matrix used to rotate the input matrix
              sind(a) cosd(a) 0 0; 
              0 0 1 0; 
              0 0 0 1];
    transMat = [1 0 0 0;                    % The matrix used to translate the input matrix. (a/rot) allows the graph to translate and rotate at the same time (this took 90 minutes to find out) %
                0 1 0 0; 
                0 0 1 (a/rot)*zTrans; 
                0 0 0 1];
    xRot = rotMat*x;                        % Applies the rotation to the matrix
    xFinal = transMat*xRot;                 % Applies the translation to the matrix
    drawStickTetra(xFinal);                 % Draws the resultant matrix in the graph
    hold off                                % redraws everything each loop
    axis(axisLim);
    pause(.1);                              % Rate at which the graph redraws the moving points %
end

end

function drawStickTetra(tet) 

% Given four points in 3D space, draws a tetrahedron by plotting the points
% and drawing lines between the points

plot3(tet(1,:),tet(2,:),tet(3,:),'bo');                                          % Plot all the points in tet %
hold on                                                                          % Keeps those points on the graph %

plot3(tet(1,[1 2 1 3 1 4 1]),tet(2,[1 2 1 3 1 4 1]),tet(3,[1 2 1 3 1 4 1]),'-r') % Draws lines connecting points A to points B, C, and D %
plot3(tet(1,[2 3 2 4 2]),tet(2, [2 3 2 4 2]),tet(3,[2 3 2 4 2]),'-r')            % Draws lines connecting points B to points C and D %
plot3(tet(1,[3 4 3]),tet(2,[3 4 3]),tet(3,[3 4 3]),'-r')                         % Draws a line connecting points C and D %

end