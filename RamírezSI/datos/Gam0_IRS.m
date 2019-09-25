function y=Gam0(x0)_IRS
%Esta función se utilizará para hacer una interpolación de la función gamma
%Ramírez Salazar Isaura
%MARTES, 2019-2

g=[4,5,6,3,4];%Datos de gamma 
x=[7,5,8,1,3];%Valores de x que vienen de haber evaluado a g  
y=inter_lin_IRS(x,g,x0);