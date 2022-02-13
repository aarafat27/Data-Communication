fs = 1000; %sample
t = 0:1/fs:1-1/fs; %time duration

f1 = 5; %frequency
f2 = 15;
f3 = 25;

A1 = 25; %AMPLITUDE
A2 = 15;
A3 = 5;

S1 = A1*sin(2*pi*f1*t); %signal
S2 = A2*sin(2*pi*f2*t);
S3 = A3*sin(2*pi*f3*t);

S = S1+S2+S3; %composite signals

plot(t,S)
title('Composite Signal')
xlabel('Time in seconds')
ylabel('Amplitude in volts')
text(0.25,0,'Arafat Islam')

fx = fft(S); %apply fourier transformation
fx = fftshift(fx)/(fs/2);
f = fs/2*linspace(-1,1,fs);
figure;
plot(f, abs(fx))
title('Frequency Domain')
xlabel('Frequency in hz')
ylabel('Magnitude')
text(-45,17,'Arafat Islam')
axis([-100 100 0 27])