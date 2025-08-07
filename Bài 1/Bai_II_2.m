t=linspace(-10,10,10000);
y=2*uramp(t,2.5)-5*uramp(t,0)+3*uramp(t,-2)+ustep(t,-4);
[ye,yo]=evenodd(y);
plot(t,y,'k','linewidth',2)
hold on
plot(t,ye,'r-.','linewidth',2) 
plot(t,yo,'b--','linewidth',2)
legend('y','ye','yo')
grid on