function [y]=interpola(xx,yy,x)_IRS
[xx,h,a,gam0]=PiVoTe_IRS;
%Este programa utiliza los datos del programa PiVoTe para realizar la
%interpolación
k=length(xx);
if x< xx(1)
    y=yy(1);
elseif x>xx(k)
    y=yy(k);
else
    for i=1:k
        if x>xx(i) && x<xx(i+1)
            y=yy(i)+(yy(i)-yy(i+1))/(xx(i)-xx(i+1))*...
                (x-xx(i));
            break,break 
        end
    end
end
end 