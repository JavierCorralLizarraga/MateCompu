clear;
clc;
a = 2.0;
b = 0.6;
c = 6.0;
d = 20.0;
x0 = 0.1;
y0 = 0.1;
T = 30.0;
Delta = 0.01;

x(1)=x0;
y(1)=y0;
N=round(T/Delta,0);
for k = 2:N
    f1 = a * x(k-1) - b * x(k-1) * y(k-1) - x(k-1)*x(k-1);
    f2 = -c * y(k-1) + d * x(k-1) * y(k-1);
    x(k) = x(k-1) + f1 * Delta;
    y(k) = y(k-1) + f2 * Delta;
end

plot(x)
plot(y);
plot(x,y)