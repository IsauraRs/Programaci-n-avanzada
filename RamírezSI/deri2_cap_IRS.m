function[h]=deri2_cap_IRS;
%Este programa recibe xini,xfin,hini,hfin,n
%Ramírez Salazar Isaura, 2019-2, Martes
n=length(x)-2;
x=x(:);
delta_x=(x(h+2)-x(1))/(n+1);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         inspace(xini,xfin,n+2);
%inicia ciclo
for i=1:n
    k3(i)=fun(x(i+1)-delta_x/2)/delta_x^2;
    k4(i)=fun(x(i+1)+delta_x/2)/delta_x^2;
    k0(i)=-(k3(i)+k4(i));
    b(i)=10;
end
b(1)=b(1)-K3(1)*hini;
b(n)=b(n)-k4(n)*hfin;
h=th_IRS(k0,k3,k4,b);
h=[hini;h(:);hfin];
    plot(x,h);