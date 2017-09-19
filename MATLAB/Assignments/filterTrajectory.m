function filterTrajectory(t,X,w)

for i = 1:9
    krnl(i) = .112;
end

newX = bxcarFilter(X(1,:),w);
newY = convtdFilter(X(2,:),krnl);
newZ = convfdFilter(X(3,:),krnl);

plot3(X(1,:),X(2,:),X(3,:),'-c');
hold on;
plot3(newX(),newY(),newZ(),'-r');

figure
plot(t,X(1,:),'-c');
hold on;
plot(t,X(2,:),'-c');
plot(t,X(3,:),'-c');
plot(t,newX(),'-r');
plot(t,newY(),'-r');
plot(t,newZ(),'-r');

end

function smooth = bxcarFilter(in,w)

smooth = in();

for i = w+1:length(in)-w
    smooth(i) = mean(in(i-w:i+w));
end

end

function out = convtdFilter(in,kernel)

if ~isvector(in)
    error('Input signal must be a vector');
end
if ~isvector(kernel)
    error('Kernel must be a vector');
end
if ~rem(length(kernel),2)
    error('Kernel must have odd number of elements');
end

w = (length(kernel)-1)/2;
kernel = flip(kernel);
out = in();

for i = w+1:length(in)-w
    chunk = in(i-w:i+w);
    sum = 0;
    for j = 1:length(kernel)
        sum = sum + kernel(j)*chunk(j);
    end
    
    out(i) = sum;
end

end

function final = convfdFilter(x,kernel)
if ~isvector(x)                                  % Checks for valid input
    error('Input signal must be a vector');
end
if ~isvector(kernel)
    error('Kernel must be a vector');
end

w = (length(kernel)-1)/2;         % Setting w
kernel = flip(kernel);            % reversing the order of the r coefficients

pad = length(x) + w;
x(pad) = 0;              % zero padding s
kernel(pad) = 0;         % zero padding r

X = fft(x);                       % DFT of s
R = fft(kernel);                  % DFT of r

product = X.*R;                   % element by element multiplication of X and R
invProd = ifft(product);          % inverse of that product

final(length(invProd)-w) = 0;     % defines the output vector
for i = 1:length(invProd)-w       % deletes extra elements at end of signal
    final(i) = invProd(i);
end

end