function[h]=deri2_IRS
%
%Ramírez Salazar Isaura, 2019-2,Martes.
x=-2:0.1:2;
hini=20;
hfin=20
delta_x=0.1;
%definir la matriz
d1=(1/delta_x^2)*ones(size(x)-2);
d2=d1;
d0=-(d1+d2);
b=10+zeros(size(d0));
b(1)=b(1)-d1(1)*hini;
b(n)=b(n)-d2(n)*hfin;
h=th_IRS(d0,d1,d2,b);
h=[hini;h(:);hfin]
plot(x(:),h)
