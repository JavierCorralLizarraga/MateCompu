clear;
clc;
x0 = 1.0;
y0 = 1.0;
T = 100.0;
Delta = 0.001;

x(1)=x0;
y(1)=y0;
N=round(T/Delta,0);
for k = 2:N
    f1 = x(k-1) - 2 * x(k-1) * y(k-1);
    f2 = -0.5 * y(k-1) + 2 * x(k-1) * y(k-1);
    x(k) = x(k-1) + f1 * Delta;
    y(k) = y(k-1) + f2 * Delta;
end

plot(x);
plot(y);
plot(x,y)