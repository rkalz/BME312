clear;
clc;

t = cputime(); % Unix time when run

for i = 1:1000
    for j = 1:1000
        a(i,j) = 4; % Sets each element in array to 4.
    end
end

cputime() - t % Difference between two times

t = cputime()
a = ones(3000) * 4;
cputime() - t;