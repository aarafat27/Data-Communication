clc;
clear all;
pkg load communications;
% ID: 19-39377-1
%     AB-CDEFG-H
A1=79;
A2=17;
%fs=3000; (c)
%t=-0.001:1/fs:0.019; (b)
%t= 0:1/fs:1-1/fs;   (c)

%new
fs=200000; 
%new
t=-0.001:1/fs:0.009; 

%fs = 10e3;
%t = 0:1/fs:0.1;

x1=A1*cos(2*pi*(3*100)*t);
x2=A2*cos(2*pi*(7*100)*t);
x3=x1+x2;

%plot(t,x3,'r','linewidth',1.5);
%hold on;
%xlabel('Time in seconds') 
%ylabel('Amplitude in volts') 

%fx = fft(x3); %apply fourier transformation
%fx = fftshift(fx)/(fs/2);
%f = fs/2*linspace(-1,1,fs);
%figure;
%plot(f, abs(fx));
%title('Frequency Domain')
%xlabel('Frequency in hz')
%ylabel('Magnitude')
%bandwidth = obw(x3,fs);


partition = [-80,-48,-16,0,16,48,80]; 

codebook = [-96:96];
[i,xq] = quantiz(x3,partition,codebook);
plot(t,x3,'x',t,xq,'.')
legend('Original signal','Quantized signal');