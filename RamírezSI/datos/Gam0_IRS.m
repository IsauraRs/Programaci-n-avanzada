function y=Gam0(x0)_IRS
%Esta funci�n se utilizar� para hacer una interpolaci�n de la funci�n gamma
%Ram�rez Salazar Isaura
%MARTES, 2019-2

g=[4,5,6,3,4];%Datos de gamma 
x=[7,5,8,1,3];%Valores de x que vienen de haber evaluado a g  
y=inter_lin_IRS(x,g,x0);