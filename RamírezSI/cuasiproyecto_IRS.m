function [w]=cuasiproyecto_IRS
%Con este programa se determinarán las caídas de presión en un intervalo
%con valores propuestos por el usuario
%MARTES, 2019-2
clc
clear all
close all
[x,h0,dt,tf]=datost_IRS;
[xx,h,a,q,gam0]=PiVoTe_IRS;
n=length(x)-2;
dx=(x(n+2)-x(1))/(n+1);
for i=2:n+1 %for 1
    k3(i-1)=interpola(xx,a,x(i)+ dx/2)/(dx^2);
    k4(i-1)=interpola(xx,a,x(i)- dx/2)/(dx^2);
    gt(i-1)=interpola(xx,gam0,x(i))/dt;
    k0(i-1)=-(k3(i-1)+k4(i-1)+gt(i-1));
    q0(i-1)=interpola(xx,q,x(i));
end %fin del for 1
q0(1)=q0(1)-(k3(1)*h0(1));
q0(n)=q0(n)-(k4(n)*h0(n+2));
hold on
for t=dt:dt:tf %for 2
    for i=1:n %for 3
        b(i)=q0(i)-(gt(i)*h0(i+1));
    end %fin del for 3
    h1=th_n_IRS(k0,k3,k4,b);
    h0=[h0(1);h1(:);h0(n+2)]   
    plot(x(:),h0,'b'); 
    pause(.1);
end %fin del for 2
hold off
        




