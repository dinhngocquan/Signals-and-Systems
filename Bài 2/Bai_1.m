% example of a sinusoidal signal
% playing and plotting a pure tone
%
T = 2; % time to play the note is 2 sec
Fs = 8000; % sampling frequency is 8000 Hz
t=0:1/Fs:T; % vector of time instants
Amp = 1; % amplitude of the tone
ph=0; % phase of the tone
fb = 494; % frequency of middle B
N=300;
x = Amp*sin(2*pi*fb*t+ph); % vector x contains the values of
% the sinusoidal of frequency fb
% try with x = Amp*exp(-t).*sin(2*pi*fb*t+ph);
plot(t(1:300),x(1:300));
% play the note
sound(x,Fs);