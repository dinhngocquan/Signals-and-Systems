%Câu a
w=pi/10;
t=-10:pi/1000:10;
x1=1+1.5*cos(2*pi*w*t)-0.6*cos(4*w*t);
plot(t,x1)
grid on
%Câu b
figure
w=pi/10;
t=-10:pi/1000:10;
x2=1+1.5*cos(6*pi*t)-0.6*cos(4*w*t);
plot(t,x2)
grid on