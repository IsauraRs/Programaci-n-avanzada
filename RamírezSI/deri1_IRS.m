function[y]=deri1_IRS(xo, delta_x);
%Este programa obtiene la segunda derivada, recibe los valores tanto de xo
%como delta_x
%Ramírez Salazar Isaura, 2019-2, Martes
y=fun(xo-delta_x);
y=y-2*fun(xo);
y=y+fun(xo+delta_x);
y=y/(delta_x^2);
