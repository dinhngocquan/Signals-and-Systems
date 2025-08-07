%5u(t-2)
t=linspace(-10,10,10000);
y=5*ustep(t,-2);
plot(t,y,'linewidth',2)
grid on
title('5u(t-2)')
axis([-10 10 -1 6])
%3r(t+5)
figure
t=linspace(-10,10,10000);
y=3*uramp(t,5);
plot(t,y,'linewidth',2)
grid on
title('3r(t+5)')
axis([-10 10 -10 50])
%y(t)=2r(t+2,5)-5r(t)+3r(t-2)+u(t-4)
figure
t=linspace(-10,10,10000);
y=2*uramp(t,2.5)-5*uramp(t,0)+3*uramp(t,-2)+ustep(t,-4);
plot(t,y,'linewidth',2)
grid on
title('2r(t+2,5)-5r(t)+3r(t-2)+u(t-4)')
%y(t)=sin(t)*[u(t+3)-u(t-3)]
figure
t=linspace(-10,10,10000);
y=sin(t).*(ustep(t,3)-ustep(t,-3));
plot(t,y,'linewidth',2)
grid on
title('sin(t)*[u(t+3)-u(t-3)]')