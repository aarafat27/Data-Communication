pkg load signal;
clc;
clear all;
pkg load communications;


%19-39377-1
%AB-CDEFG-H

A1 = 19;
A2 = 17;
s = 11;
C = 3;
G = 7;
fs = 48e3;
t = 0:1/fs:1-1/fs;

powfund = (A1^2)/2 + (A2^2)/2;
varnoise = s^2;




s1 = A1*sin(2*pi*(C*100)*t);
s2 = (A2*cos(2*pi*(G*100)*t)) + s*randn(size(t));

x = s1 + s2;

noise = s*randn(size(t));
SNR = powfund/varnoise
dfSNR=10*log10(powfund/varnoise)
bandwidth = obw(x,fs); 

