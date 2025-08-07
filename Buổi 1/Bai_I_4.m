%Đồ thị 1
t=linspace(-10,10,10000);
y=0.5*uramp(t,4)-uramp(t,0)+0.5*uramp(t,-4);
plot(t,y,'linewidth',2)
grid on
axis([-10 10 -0.5 2])
%Đồ thị 2
figure
t=linspace(-10,10,10000);
y=ustep(t,8)+0.5*uramp(t,4)-uramp(t,0)+0.5*uramp(t,-4)-ustep(t,-8);
plot(t,y,'linewidth',2)
grid on
axis([-10 10 0 3])