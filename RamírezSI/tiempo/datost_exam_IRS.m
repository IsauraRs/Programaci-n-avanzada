function[x,h0,delta_t,tf]=datost_exam_IRS
%Este programa contempla, de acuerdo al libro
%una variación del tiempo igual a 15 a lo largo de un año y una presión
%igual a 6000 psia
%Ramírez Salazar Isaura, 2019-2, Martes
x=1:1:11;
h0=6000*ones(1,11);
h0(1)=6000;
h0(end)=6000;
delta_t=15;
tf=360;