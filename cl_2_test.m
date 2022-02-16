
pkg load communications;

fs=40e3;% sampling frequency
fc=4e3;% frequency of the signal
t=0:1/fs:0.001;%discrete time
x=10*sin(2*pi*fc*t);% discrete signal

n=4;
L=(2^n);
delta=(max(x)-min(x))/L;
i = round((x-min(x))/delta);
xq=min(x)+(i.*delta);


subplot(3,1,1)
plot(t,x,'r')
title("Arafat Islam")
xlabel('time')
ylabel('Amplitude')

subplot(3,1,2)
stem(t,x,'b')
title("Sample Signal")
xlabel("time")
ylabel("Amplitude")

subplot(3,1,3)
stairs(t,xq+9,'b')
title('Quantized Signal')
xlabel('Time')
ylabel('Amplitude')

