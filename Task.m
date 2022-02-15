clc;
clear all;
% ID: 19-39377-1
%     AB-CDEFG-H
pkg load communications;
A1=79;
A2=17;
fs = 1000; 
t = 0:1/fs:1-1/fs;

x1=A1*cos(2*pi*(3*100)*t);
x2=A2*cos(2*pi*(7*100)*t);
x3=x1+x2;
%plot(t,x3,'b','linewidth',1.5);
%hold on;
%xlabel('time in seconds') 
%ylabel('Amplitude in volts') 

fx = fft(x3); %apply fourier transformation
fx = fftshift(fx)/(fs/2);
f = fs/2*linspace(-1,1,fs);
figure;
plot(f, abs(fx))

title('magnitude FFT of sine');
xlabel('Frequency (Hz)');
ylabel('magnitude');
noise = 2*randn(size(x3));
figure
plot(t,noise)
xlabel('Time (s)');
ylabel('Amplitude');
title('Time-Domain Noise');
fftNoise = fft(noise);
fftNoise = fftshift(fftNoise)/(fs/2);
figure
plot(f,abs(fftNoise))
title('Magnitude FFT of noise');
xlabel('Frequency (Hz)');
ylabel('magnitude');
noisySignal = x3 + noise;
figure
plot(t,noisySignal)
xlabel('Time (s)');
ylabel('Amplitude');
title('Time-Domain Noisy Signal');
fftNoisySignal = fft(noisySignal);
fftNoisySignal = fftshift(fftNoisySignal)/(fs/2); 
figure
plot(f,abs(fftNoisySignal))
title('Magnitude FFT of noisy signal');
xlabel('Frequency (Hz)');
ylabel('magnitude');
bandwidth = obw(x3,fs);
