clear;
clc;
s=sqrt(3)/2;
A=3*s; n=6;
z=[n A A-pi s];
while s>1e-10
s = s/(sqrt(2*(1+sqrt(1-s*s)))); % nuevo
% s = sqrt((1-sqrt(1-s*s))/2); anterior
n=2*n;
A=n/2*s;
z=[z; n A A-pi s];
end
m=length(z);
for i=1:m
fprintf('%10.0f %20.15f %20.15f %20.15f\n',z(i,1),z(i,2),z(i,3),z(i,4))
end
plot(z(:,3))
