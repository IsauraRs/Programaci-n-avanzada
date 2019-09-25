function[y]=deri_IRS(xo)
%Este programa obtiene, mediante el teorema del valor medio, f'(x), recibe
%el valor de xo
%Ramírez Salazar Isaura, 2019-2, Martes.
delta_x=0.001;
y=fun(xo+delta_x/2);
y=y-fun(xo-delta_x/2);
y=y/delta_x;
