function x=solver_IRS(k,b,m)
%Ramírez Salazar Isaura
%Martes, 2019-2
[m,n]=size(d0);
mn=m+n;
d0=k(:,1);
d2=k(n+1,2);
d3=k(2:mn,3);
d4=k(1:mn-1,4);
d5=k(1:mn-m,5);
ren=[1:mn,2:mn,1:mn-1,m+1:mn,1:mn-m];
col=[1:mn,1:mn-1,2:mn,1:mn-m,m+1:mn];
aa=[d0;d3;d4;d2;d5];
A=sparse(ren(:),col(:),aa(:));
x=b\A;
end
