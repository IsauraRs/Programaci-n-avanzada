function[h]=derit_exam_IRS
%Este programa representa la producci�n de un a�o con intervalos de 15 d�as
%en un flujo radial, se involucran par�metros de la roca as� como del
%fluido
%Ram�rez Salazar Isaura, 2019-2, Martes
delta_x=(x(n+2)-x(1))/(n+1);
for j=2:n+1
    k3(j-1)=-(fun_exam(x(j)-delta_x/2)/delta_x^2);
    k4(j-1)=k3(j-1);
    gt(j-1)=gam0(x(j))/delta_t;
    k0(j-1)=-(k3(j-1)+k4(j-1)+gt(j-1));
    q0(j-1)=rhs_q_IRS(x(j));
end
q0(1)=q0(1)-k3(1)*h0(1);
q0(n)=q0(n)-k4(n)*h0(n+2);
hold on
for t=delta_t:delta_t:tf
    for i=1:n
        b(i)=q0(i)-(gt(i)*h0(i+1));
    end
    h1=th_IRS(k0,k3,k4,b);
    h0=[h0(1);h1(:);h0(n+2)];
plot(x(:),h0)
pause(1)
end
hold off