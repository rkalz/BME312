function out = convtd(in,kernel)

if ~isvector(in)
    error('input signal must be a vector');
end

if ~isvector(kernel)
    error('input kernel must be a vector');
end

if ~rem(length(kernel),2) 
    error('kernel must have odd number of elements')
end

w = (length(kernel)-1)/2;

out = zeros(size(in));

for i = w+1:length(in)-w
    chunk = in(i-w:i+w);
    out(i) = chunk*kernel;
end

% out = convtd(signal,kernel)
% plot(signal)
% hold on
% plot(out,'r')
% outB = bxcar(signal, w)
% plot(outB,'m')