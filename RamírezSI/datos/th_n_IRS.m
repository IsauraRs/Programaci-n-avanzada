function x=th_n_IRS(d0,d1,d2,b)
%Este programa es el algoritmo de thomas para resolver vectores
%martes
n=length(b);
for i=2:n %Inicia for 1
    alf=d1(i)/d0(i-1);
    d0(i)=d0(i)-alf*d2(i-1);
    b(i)=b(i)-alf*b(i-1);
end %Termina for 1 
x(n)=b(n)/d0(n);
for i=n-1:-1:1 %Inicia for 2
    x(i)=(b(i)-d2(i)*x(i+1))/d0(i);
end %Termina for 2
    