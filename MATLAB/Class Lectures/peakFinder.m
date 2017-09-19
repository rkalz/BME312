function out = peakFinder(in,w)

out = zeros(size(in));

for i = w+1:length(in)-w
    chunck = in(i-w:i+w)
    [m ind] = max(chunk);
    if ind == w+1
        out(i) = in(i)
    end
end