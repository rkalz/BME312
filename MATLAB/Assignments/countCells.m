function count = countCells(in, tem)

sizeTem = size(tem);
count = 0;
xOff = (size(tem,2)-1)/2 + 5;
yOff = (size(tem,1)-1)/2 + 10;
imshow(in);
hold on;

if rem(sizeTem(1),2) ~= 1 || rem(sizeTem(2),2) ~= 1
    error('Template must have odd number of rows and columns');
end

xc = normxcorr2(tem,in);
match = peakFinder2D(xc,15);
for i = 1:size(match,1)
    for j = 1:size(match,2)
        if match(i,j) >= .05
            count = count + 1;
            plot(j-yOff,i-xOff,'ro');
        end
    end
end

end

function out = peakFinder2D(in,w)

out = zeros(size(in));

for i = w+1:size(in,1)-w
    for j = w+1:size(in,2)-w
        chunk = in(i-w:i+w,j-w:j+w);
        [m ind] = max(chunk(:));
        if ind == (w^2)+1
            out(i,j) = in(i,j);
        end
    end
end

end
        

