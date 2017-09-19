function spinTri(X)

drawTri(X);
T = [1 0 3;
     0 1 0;
     0 0 1];
xNew = T*X;
drawTri(xNew)
axis([-5 5 -5 5]);

for a = 5:5:360 % 5 to 360 in increments of 5
    R = [cosd(a) -sind(a) 0;
         sind(a) cosd(a)  0;
         0       0        1];
    xNew2 = R*X;
    drawTri(xNew2);
    hold off
    axis([-5 5 -5 5]);
    pause(0.05);
end

for a = 5:5:360 % 5 to 360 in increments of 5
    R = [cosd(a) -sind(a) 0;
         sind(a) cosd(a)  0;
         0       0        1];
    T1 = [1 0 -3;
          0 1 0;
          0 0 1];
    T2 = [1 0 3;
          0 1 0;
          0 0 1];
    C = T2*R*T1;
    xNew3 = C*xNew;
    drawTri(xNew3);
    hold off
    axis([-5 5 -5 5]);
    pause(0.05);
end