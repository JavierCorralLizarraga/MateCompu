function [x,y] =  lotkaVolterra(a, b, c, d, x0,y0,T,Delta)
x(1)=x0;
y(1)=y0;
N=round(T/Delta,0);
for k = 2:N
    f1 = a * x(k-1) - b * x(k-1) * y(k-1) - x(k-1)*x(k-1)*x(k-1)*x(k-1);
    f2 = -c * y(k-1) + d * x(k-1) * y(k-1);
    x(k) = x(k-1) + f1 * Delta;
    y(k) = y(k-1) + f2 * Delta;
end
plot(x,y)
end
 