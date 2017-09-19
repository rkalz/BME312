function [u t] = defib(u0, dt, tend, params)

    n = 1;
    u(n) = u0;
    t(n) = 0;
    tol = 1e-6;
    
    while abs(1-u(n)) > tol
        umid = u(n) + secondOrderSplit(u(n),params)*dt/2;
        uleft = u(n) + secondOrderSplit(u(n),params)*dt/4;
        uright = u(n) + 3*secondOrderSplit(u(n),params)*dt/4;
        ufull = u(n) + secondOrderSplit(u(n),params)*dt;
        rhsMid = secondOrderSplit(umid,params);
        rhsLeft = secondOrderSplit(uleft,params);
        rhsRight = secondOrderSplit(uright,params);
        rhsFull = secondOrderSplit(ufull,params);
        u(n+1) = u(n) + (1/6)*(rhsFull(2)+(2*rhsMid(2))+(2*rhsLeft(2))+rhsRight(2))*dt;
        t(n+1) = t(n) + dt;
        n = n+1;
    end
    

end

function [u t] = eulerSystem(u0, dt, tend, params)
    t = 0:dt:tend;
    u(1,:) = u0;
    u(length(t),tend) = 0;
    for n = 1:length(t)-1
        u(n+1,:) = u(n,:) + secondOrderSplit(u(n,:),params)*dt;
    end
end

function rhs = secondOrderSplit(u, params)
    L = params(1);
    R = params(2);
    C = params(3);
    V = params(4);
    
    rt = -u/(L*C);
    q = R/L;
    z = V/L;
    
    rhs(1) = q;
    rhs(2) = rt(1) - q*z;
end