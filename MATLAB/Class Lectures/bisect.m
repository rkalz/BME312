function root = bisect(a,b,tol,params)

fa = fcn(a,params);
if abs(fa) < tol
    root = a;
    return
end

fb = fcn(b,params);
if abs(fb) < tol
    root = b;
    return
end

end

function f = fcn(x,params)

f = x*x - params(1);

end