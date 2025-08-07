% doc file 
[data, Fs]=audioread('female_voice.wav'); 
data = data(:, 1).'; 
% Fs: tan so trich mau; Ts: Thoi gian trich mau
Ts = 1/Fs; 
 
% phat lai am thanh bi hong 
sound(data, Fs); 
 
% vecto thoi gian
t = [-10:Ts:10]; 
 
% tan so cat cua bo loc la 1500Hz 
wb = 1500*2*pi; 
 
% bo loc thong thap ly tuong voi tan so cat wb 
% bien doi fourier: rect(w/wb) 
ht = wb/(2*pi)*sinc(wb*t/(2*pi)); 
 
% dau vao: du lieu, dap ung tuyen tinh, bat bien: ht 
% dau ra: y = tich chap cua du lieu voi ht
y = conv(data, ht, 'same'); 
 
% chuan hoa am thanh da xu ly tranh su cat xen 
y = y/max(abs(y)); 
% phat lai am thanh da duoc xu ly
sound(y, Fs);