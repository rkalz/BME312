function drawTri(X)

plot(X(1,:), X(2,:), 'bo');
hold on; % graph is not overwritten
plot(X(1,[1 2 3 1]),X(2, [1 2 3 1]),'r-'); % draws lines between all the points


end