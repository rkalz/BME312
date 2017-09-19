function piB = getPi(n, draw)

if nargin==1 % Number of arguments given
    draw = 0;
end

% Calculate Pi using random points and 1/4th of a unit circle %
if draw
    figure
    axis equal;
    axis([0 1 0 1]);
    hold on;
end


h = 0;
for i = 1:n
    x = rand();
    y = rand();
    r = sqrt(x^2 + y^2); 
    
    if draw, code = 'ro';end % draw red circle if outside circle
    
    if r <= 1
        h = h + 1;
        if draw, code = 'bo';end % draw blue circle if unside circle
    end
    
    if draw
        plot(x,y,code);
        pause(.01); % small break between points being plotted
    end
end

piB = h*4/n;