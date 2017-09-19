function [mean aplist] = apd(signal)

plot(signal,'-c')                               
hold on
sum = 0;

[b g] = sgolay(2,31);                                  

dk = flip(g(:,2))';                         % kernels for the second and third order to find start and end of action potential
dk2 = flip(g(:,3))';                        

d = conv(signal,dk);                        % cleans the signals while finding derivative graphs
d2 = conv(signal,dk2);

pd1 = peakLocator(d,200);                   % finds peaks in filtered second and third order graphs
pd2 = peakLocator(d2,200);

nzd1 = find(pd1);                           % returns the indices where peaks are located
nzd2 = find(pd2);
aplist(length(nzd2)) = 0;                   % initializes output vector to contain action potential timings

for i = 1:length(nzd1)
    plot(nzd1(i),signal(nzd1(i)),'ko');     % plots where AP starts
end

for i = 1:length(nzd2)
    plot(nzd2(i),signal(nzd2(i)),'ko');     % plots where AP ends
    aplist(i) = nzd1(i) - nzd2(i);          % calculates diffference between peaks to find action potential times
end 

for i = 1:length(aplist)
    sum = sum + aplist(i);                  % used to find mean of action potentials
end

mean = sum/length(aplist);                  % final output for mean of action potentials

end

function out = peakLocator(in,w)

out = zeros(size(in));

for i = w+1:length(in)-w
    chunk = in(i-w:i+w);
    [m ind] = max(chunk);
    if ind == w+1
        out(i) = in(i);
    end
end

end