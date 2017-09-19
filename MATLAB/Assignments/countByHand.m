cells = imread('bloodcells.gif');
imshow(cells);
hold on

b = 1;
n = 0;

while b~=3
    [x y b] = ginput(1);
    n = n + 1;
    text(x,y,num2str(n));
end
