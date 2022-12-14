function dx = Control(t,x)
a=35;
b=3;
c=28;
k1=-1;
k2=17;
k3=-3;


dx=zeros(6,1);
dx(1)=a*(x(2)-x(1))+k1*(-x(4)-x(1));
dx(2)=(c-a)*x(1)-x(1)*x(3)+c*x(2)+k2*(-x(5)-x(2));
dx(3)=x(1)*x(2)-b*x(3)+ k3*(x(6)-x(3));
dx(4)=a*(x(5)-x(4))+k1*(-x(4)-x(1));
dx(5)=(c-a)*x(4)-x(4)*x(6)+c*x(5)+k2*(-x(2)-x(5));
dx(6)=x(4)*x(5)-b*x(6) + k3*(x(6)-x(3));
end
