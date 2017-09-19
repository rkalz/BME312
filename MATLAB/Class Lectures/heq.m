function trans = heq(h)

target = sum(h)/length(h);

ingray = 0;
outgray = 0;

currentAllocation = target;

while ingray <= length(h)-1
    if h(ingray+1) <= currentAllocation
        trans(ingray+1) = outgray;
        currentAllocation = currentAllocation-h(ingray+1);
        ingray = ingray+1;
    else
        outgray = outgray+1;
        currentAllocation = currentAllocation+target;
    end
trans = uint8(trans);
end

    