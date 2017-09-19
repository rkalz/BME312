% Flow Control: Loops (If, while, for), break, continue %
% Functions: %

% a = 3; %

% Data Types: integers, characters %
% Scalars and Vectors %

while 1==0 
	disp 'still going'
end

% Ctrl-C kills loopy programs %

n = 0;
while 1
	disp 'still going'
	if n == 12
		break
    end
    n = n + 1
end
disp 'done'

for n = 1:13
    disp 'stll going'
end
disp 'done'
