function x = crammer(A, b)
%CRAMMER Se entrega una un sistema de ecuaciones en su forma matricial y se resuelve por el metodo de crammer
N = size(A); 
for i = 1:N
    if i == 1
        x(i)=det([b, A(:,i+1:N)])/det(A);
    elseif i == N
        x(i)=det([A(:,1:i-1), b])/det(A);
    else
        x(i)=det([A(:,1:i-1), b, A(:,i+1:N)])/det(A);
    end
end
x=x';
end

