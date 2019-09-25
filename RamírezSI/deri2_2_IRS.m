function[h]=deri2_2_IRS
%Ramírez Salazar Isaura, 2019-2, Martes
n=100;
hini=0;
hfin=2;
xini=-5;
xfin=3;
x=linspace(xini,xfin,n+2);
delta_x=(xfin-xini)/(n+1);
for j=1:n
    k1(j)=(7*(x(j+1)-delta_x/2)^2)/(delta_x^2);
    k2(j)=(7*(x(j+1)+delta_x/2)^2)/(delta_x^2);
    k0(j)=(k1(j)+k2(j));
    b(j)=10;
end
b(1)=b(1)-k1(1)*hini;
b(n)=b(n)-k2(n)*hfin;

    