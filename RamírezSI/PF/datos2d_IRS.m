function[x,y,h]=datos2d_IRS
%Ramírez Salazar Isaura
%Martes, 2019-2
dt=15;
tf=365;
dh=0.01;
tol=0.00001;
x=linspace(0,1,12);
y=linspace(-1,1,12);
[x,y] =meshgrid(x,y);
h=zeros(size(x));
h(1,:)=exp(x(1,:).*y(1,:));
h(end,:)=exp(x(end,:).*y(end,:));
h(:,1)=exp(x(:,1).*y(:,1));
h(:,end)=exp(x(:,end).*y(:,end));

