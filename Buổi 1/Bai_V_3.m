t=linspace(-10,10,10000);
x1=exp(-abs(t));
x2=exp(-abs(-t));
plot(t,x1,'b','linewidth',2)
hold on
plot(t,x2,'r--','linewidth',2)
legend('x(t)','x(-t)')
grid on