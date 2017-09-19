function smooth = bxcar(in,w)

smooth = zeros(size(in));

for i = w+1:length(in)-w
    smooth(i) = mean(in(i-w:i+w));
end
