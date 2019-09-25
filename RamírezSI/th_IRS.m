function[x]=th_IRS(d0,d1,d2,b)
%Este programa resuelve el algoritmo de Thomas,recibe los valores de
%d0,d1,d2 y b.
%Ramírez Salazar Isaura, 2019-2, Martes
n=length(b);
%1er for
for i=2:n
    alf=d1(i)/d0(i-1);
    d0(i)=d0(i)-alf*d2(i-1);
    b(i)=b(i)-alf*b(i-1);
end
x(n)=b(n)/d0(n);
%2do for
for i=n-1:-1:1
    x(i)=(b(i)-d2(i)*x(i+1))/d0(i);
end

    