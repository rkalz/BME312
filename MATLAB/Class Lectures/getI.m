function I = getI(X)

I = zeos(3); % creates a 3x3 array made of zeros

for i = 1:size(X,2) % find number of columns in X, X = 1, Y = 2, Z = 3
    I(1,1) = I(1,1) + X(2,i)^2 + X(3,i)^2; % Ixx - sigma(yi^2 + zi^2)* mi
    I(2,2) = I(2,2) + X(1,i)^2 + X(3,i)^2; % Iyy
    I(3,3) = I(2,2) + X(1,i)^2 + X(2,i)^2; % Izz
    
    I(1,2) = I(1,2) - X(1,i)*X(2,i); % Ixy
    I(2,3) = I(2,3) - X(2,i)*X(3,i); % Iyz
    I(1,3) = I(1,3) - X(1,i)*X(3,i); % Izx
end

I(2,1) = I(1,2); % Ixy = Iyx
I(3,2) = I(2,3); % Iyz = Izy
I(3,1) = I(1,3); % Izx = Ixz