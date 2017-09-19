function [u, t] = zombieA(u0,dt,to1)

n = 1;
u(n) = u0;
t(n) = 0;

while abs(1-u(n)) > to1
   u(n+1) = u(n) + dudt(u(n))*dt;
   t(n+1) = t(n)+dt;
   n = n + 1;
end

end
    
function rhs = dudt(U)

rhs = U*(1-U);

end

