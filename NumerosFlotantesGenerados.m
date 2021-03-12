clear;
clc;
Beta=2;
t=2;
% emin <= e <= emax
emin=1;
emax=2;
%  Beta^(t-1)<= m <= Beta^t - 1
% m >= Beta^(t-1)
cotaM = Beta^(t-1);
N = Beta^t - 1;
cont = 1;
for m = cotaM:N
    for e = emin:emax
        x(cont) = m * Beta^(e-t);
        cont = cont + 1;
    end
end
x