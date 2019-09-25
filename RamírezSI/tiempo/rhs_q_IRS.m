function [y]= rhs_q_IRS(x)
%Este programa indica el gasto
%El gasto debe ser positivo
%Ramírez Salazar Isaura,2019-2, Martes
y0=[0,0,0,0,0,0,75,75,0,0,0];
y=y0(x);