Fs=8000;
t=[0:1/Fs:0.5];
Fc=262;Fd=294;Fe=330;Ff=349;Fg=392;Fa=440;Fb=494;Fj=0;
C=cos(2*pi*Fc*t);
D=cos(2*pi*Fd*t);
E=cos(2*pi*Fe*t);
F=cos(2*pi*Ff*t);
G=cos(2*pi*Fg*t);
A=cos(2*pi*Fa*t);
B=cos(2*pi*Fb*t);
Si=cos(2*pi*Fj*t);
song=[C C G G A A G Si Si F F E E D D C Si Si];
sound(song,Fs)