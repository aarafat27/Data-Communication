close all;
clear all;
clc;

fs = 50000;
AMP1=13;
AMP2=12;
FREQ1=941;
FREQ2=143;
t = 0:1/fs:1-1/fs;

x1 = AMP1*sin(2*pi*FREQ1*t);
x2 = AMP2*sin(2*pi*FREQ2*t+deg2rad(30));

plot(t,x1);
hold on
plot(t,x2);
hold off
title('Input Signal (19-39377-1)')
xlabel('Amplitude')
ylabel('Time')

xc = x1+x2;
fxc = fft(xc);
fxc= fftshift(fxc)/(fs/2);
f= fs/2*linspace(-1,1,fs);

figure;
plot(f,abs(fxc));
title('Composite Signal (19-39377-1)')
axis([0 1000 0 25])
xlabel('Frequency');
ylabel('Magnitude');

sig = xc;
partition = linspace(-24.3006, 24.8686, 7);
codebook = linspace(min(xc), max(xc));
[i,xq] = quantiz(sig, partition, codebook);

figure;
plot(t,sig,'x',t,xq,'.');
title('Quantized Signal (19-39377-1)')
axis([0 0.01 -25 25])