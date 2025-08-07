% main.m
 load hum3hb;
 x=hb; tf=(size(x,2)-1)*T;
 t=0:T:tf;
 [f,Xf]=FourierTransform(t,hb);
 figure(1);
 subplot(2,1,1)
 plot(t,x,'linewidth',1);
 grid; axis([0 2.5 -0.5 1.5]);
 xlabel('t (sec)');ylabel('x(t)');
 subplot(2,1,2)
 plot(f,abs(Xf),'linewidth',1);
 grid; axis([-150 150 0 0.12]);
 xlabel('f (Hz)');ylabel('|X(f)|');
 h=(568*exp(-300*t)-485*exp(-243*t).*cos(176*t)...
 +668*exp(-243*t).*sin(176*t)-83*exp(-93*t).*cos(285*t)...
 -255*exp(-93*t).*sin(285*t));
 [f,Hf]=FourierTransform(t,h);
 figure(2)
 subplot(2,2,[1 2])
 plot(t,h,'linewidth',1); grid;
 axis([0 0.5 -50 150]); 
 xlabel('t (sec)'); ylabel('h(t)');
 subplot(2,2,3)
 plot(f,abs(Hf),'k','linewidth',1); grid;
 axis([-150 150 0 1.2]);
 xlabel('f (Hz)'); ylabel('|H(j2\pi f)|');
 subplot(2,2,4)
 angleH=unwrap(angle(Hf))+2*pi;
 plot(f,angleH,'k','linewidth',1); grid;
 axis([-150 150 -10 10]);
 xlabel('f (Hz)'); ylabel('\angle H(f)');
 Yf=Xf.*Hf;
 figure(3)
 subplot(2,1,1)
 plot(f,abs(Yf),'r','linewidth',1); grid;
 axis([-150 150 0 0.12]);
 xlabel('f (Hz)'); ylabel('|Y(f)|');
 [t2,y]=IFourierTransform(f,Yf);
 subplot(2,1,2)
 plot(t2,y,'r','linewidth',1); grid;
 axis([0 2.5 -0.5 1.5]);
 xlabel('t (sec)'); ylabel('y(t)');