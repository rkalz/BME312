function awake(catVid, eye)

xoff = (size(eye,2)-1)/2);
yoff = (size(eye,1)-1)/2);
subplot(1,2,1);
hc = imshow(catVid(:,:,1));
hold on
hdot = plot(1,1,'ro');
subplot(1,2,2);
hb = bar(0);
for i = 1:size(catVideo,3)
    set(hc,catVid(:,:,i));
    xc = normxcorr2(eye,catVid(:,:,i));
    [max loc] = max(xc(:));
    [y x] = ind2sub(size(sc),loc);
    set(hdot,'XData',x-xoff);
    set(hdot,'YData',y-yoff);
    set(hb,'YData',max)
    pause(1/30);
end