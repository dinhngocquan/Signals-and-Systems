function [f,X]=FourierTransform(t,x)
 % computes the Fourier transform of signal x(t)
 % ns: length(x)=number signal points
 % dt: signal point spacing
 %
 % Transform computed with N points, where N=2*ns
 ns=size(x,2); dt=t(2)-t(1);
 N=2*ns; df=1/(N*dt);
 xp=zeros(1,N); nns=sum(t<0);
 xp(1:ns-nns)=x(nns+1:ns); xp(N-nns+1:N)=x(1:nns);
 Xf=dt*fft(xp); n2=ceil(N/2);
 if n2==N/2; X(1:n2-1)=Xf(n2+2:N); X(n2:N)=Xf(1:n2+1);
 f=(-n2+1)*df:df:n2*df; no=n2;
 else; X(1:n2-1)=Xf(n2+1:N); X(n2:N)=Xf(1:n2);
 f=(-n2+1)*df:df:(n2-1)*df; end;