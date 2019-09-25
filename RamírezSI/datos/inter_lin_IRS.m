function y=inter_lin(x,a,x0)_IRS
%Este programa realiza una interpolación lineal
%Ramírez Salazar Isaura
%MARTES, 2019-2
n=length(x);
for i=1:n
    if x(1)<x(i) && x(1)>x(i-1);
        y=a(i-1)+(a(i)-a(i-1))/((x(i)-x(i-1))*(x(1)-x(i-1)));
    end
end
