clc;
clear all;
pkg load signal;

fs = 84000;
f = 1000;
fh = 4000;
t = 0:1/fs:1-1/fs;

A = 1;
powfund = A^2/2;

s= 0.2;
varnoise = s^2;

h =0.5;
powharm=h^2/2;

signal = A*sin(2*pi*f*t);
noise = s*randn(size(signal));

x = signal + h*sin(2*pi*fh*t) + s*randn(size(t));


%SNR = snr(received_signal)
defSNR = 10*log10(powfund/varnoise)
fTHD  = 10*log10(powharm/powfund)
defSINAD = 10*log10(powfund/(varnoise+powharm))


