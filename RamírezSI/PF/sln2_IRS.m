function sln2d_IRS
global afun2 bfun2 gamfun2 qfun2 rhs
%Ramírez Salazar Isaura
%Martes, 2019-2
[x,y,h]=datos2d_IRS;
[m,n]=size(x);
m=m-2;
n=n-2;
dx=(x(1,n+2)-x(1,1))/(n+1);
dy=(y(m+2,1)-y(1,1))/(m+1);
mn=m*n;
xint=x(2:n+1,2:m+1);
xint=xint(:);
yint=y(2:n+1,2:m+1);
yint=yint(:);
hint=h(2:n+1,2:m+1);
hint=hint(:);
h=hint(:);
for l=1:mn
    k2(l)=(afun2((xint(l))-(dx/2),(yint(l)),hint(l)))/((dx)^2);
    k3(l)=(bfun2(xint(l),(yint(l))-(dy/2),hint(l)))/((dy)^2);
    k4(l)=(bfun2(xint(l),yint(l)+(dy/2),hint(l)))/((dy)^2);
    k5(l)=(afun2(xint(l)+(dx/2),yint(l),hint(l)))/(dx^2);
    k0(l)= -1*(k2+k3+k4+k5);
    gt(l)=(gamfun2(xint(l),yint(l),hint(l)))/dt;
    q0(l)=(qfun2(xint(l),yint(l)));
end
h=h(:);
i=1;
for l=mn-m:mn
    i=i+1;
    q0(l)=q0(l)-k5(l)*h(2:m+1,end);
    k5(l)=0;
end
i=1;
for l=1:m:mn-m
    i=i+1;
    q0(l)=q0(l)-k3(l)*h(1,i);
    k3(l)=0;
end
k=[k0(:),k2(:),k3(:),k4(:),k5(:)];
hint=liebb(k,q0,hint,m);
mesh(x,y,hint);

    