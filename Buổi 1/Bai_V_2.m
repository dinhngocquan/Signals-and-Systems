t=linspace(-10,10,10000);
x=exp(-abs(t));
x1=exp(-abs(2*t));
x2=exp(-abs(0.5*t));
plot(t,x,'b','linewidth',2)
hold on
plot(t,x1,'r','linewidth',2)
plot(t,x2,'k','linewidth',2)
legend('x(t)','x(2t)','x(0.5t)')
grid on