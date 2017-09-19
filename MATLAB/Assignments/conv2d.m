function out = conv2d(in,tem)

sizeTem = size(tem);                                                        % Used for calculating w
[yIn, xIn] = size(in);                                                      % Used for applying filter later on

if sizeTem(1) ~= sizeTem(2)                                                 % Checks for valid template input
    error('Both sides of the template must be the same length');
end

if ~rem(sizeTem(1), 2)
    error('The template must have sides of an odd number');
end

temFlip1 = flipud(tem);                                                     % Flips template about x and y
temFlip = fliplr(temFlip1);
 
w = (length(temFlip)-1)/2;                                                  % Sets half width w

in = double(in);                                                            % Converts everything to type double
temFlip = double(temFlip);
out = zeros(size(in));

for i = w+1:yIn-w                                                           % Applies filter to i,j
    for j = w+1:xIn-w
        chunk = in(i-w:i+w,j-w:j+w);
        sum = 0;
        for k = 1:length(temFlip)
            for m = 1:length(temFlip)
               sum = sum + temFlip(m,k)*chunk(m,k);
            end
        end
        out(i,j) = sum;
    end
end