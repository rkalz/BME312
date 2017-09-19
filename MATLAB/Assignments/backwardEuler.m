function [u t] = backwardEuler(u0,dt,tend,params)

t = 0:dt:tend;
u(1,:) = u0;
u(length(t),end) = 0;

for n = 1:length(t)-1
    root = newton(0.3,params);
    eval = evalExp(root,params);
    du = deriveEval(eval,dt);
    u(n+1) = u(n) + du;
end

end

function root = newton(est, params)
    f = est;
    a = params(1);
    J = est*(est-a)*(1-est);
    root = J\f;
end

function eval = evalExp(in,params)
    a = params(1);
    eval = in*(in-a)*(1-in);
end

function du = deriveEval(in,dt)
    du = in*dt;
end