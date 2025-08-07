syms t;
T=20;
u(t)=heaviside(t);
x(t)=exp(-t).*cos(2*pi*t).*u(t);
f=(abs(x(t))).^2;
E=double(int(f,t,-T/2,T/2))
P=double(int(f,t,-T/2,T/2)/T)