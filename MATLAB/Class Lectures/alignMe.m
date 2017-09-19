plot3(EX(1:),EX(2,:),EX(3,:),'ro')
axis equal;

I = getI(EX);

[V D] = eig(I); % get eigenvectors of I

hold on

quiver3([0 0 0],[0,0,0],[0,0,0],V(1:),V(2:),V(3:),6)

R = inv(V);

EXNew = R*EX;

plot3(EXNew(1:),EXNew(2:),EXNew(3:),'go');