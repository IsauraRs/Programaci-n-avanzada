function x=liebb_IRS(k,b,x,m)
%Ramírez Salazar Isaura
%Martes, 2019-2
mn=length(k(:,1));
dife=1;
tol=0.000001;
x0=x;
while dife>tol
    x0=x;
    for l=1:mn
        x(l)=b(l);
        if l-m>0
            x(l)=x(l)-(l,2)*x(l-m);
        end
        if l+1<mn
            x(l)=x(l)-k(l,4)*x(l+1);
        end
        if l-1>0
            x(l)=x(l)-k(l,3)*x(l-1);
        end
        if l+m<mn
            x(l)=x(l)-k(l,5)*x(l+m);
        end
        x(l)=x(l)/k(l,1);
        dife=max(abs(x0-x))/max(abs(x));
    end
end
