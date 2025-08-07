t=linspace(-10,10,10000);
x=exp(-abs(t));
x1=exp(-abs(t-2));
x2=exp(-abs(t+2));
plot(t,x,'b','linewidth',2)
hold on
plot(t,x1,'r','linewidth',2)
plot(t,x2,'k','linewidth',2)
legend('x(t)','x(t-2)','x(t+2)')
grid on