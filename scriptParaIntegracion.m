clear all;
clc;
fprintf('Capture los datos \n\n')

T=input('Intervalo de Integracion: ');
Delta=input('Paso de Integracion: ');
a = input('Tasa de crecimiento: ');
x0= input ('Valor Inicial de x: ');
N=round(T/Delta,0);
x(1)=x0;
for k=2:N
    x(k)=x(k-1)+a*x(k-1)*Delta;
end
plot(x)