clc;
clear all;
pkg load communications;

A1=79;
A2=17;
CDE=393;
fs=20000;
t=0:1/fs:0.005;
x1=A1*cos(2*pi*(393*100)*t);
n=4;
x=3.2; %given voltage
L=(2^n)-1  %show levels
delta= (max(x1)-min(x1))/L  %show step size
xq=min(x1)+(round((x-min(x1))/delta)).*delta

subplot(3,1,1)
plot(t,x1,'r');

subplot(3,1,2);
stem(t,x1,'b');% plot of discrete time signal
title('Discrete time representation')
xlabel('Time(s)')
ylabel('X[n]')

subplot(3,1,3);
stairs(t,xq,'r'); %the quantized output
title('Quantized Signal') 
xlabel('Time')
ylabel('Amplitude')