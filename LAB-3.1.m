pkg load communications;
fs = 10e3;
t = 0:1/fs:0.1;
f = 10; 
sig = 2*sin(2*pi*f*t);
partition = [-1.5, -0.5, 0.5, 1.5]; 

codebook = [-2:2];
[i,xq] = quantiz(sig,partition,codebook); 

plot(t,sig,'x',t,xq,'.')
legend('Original signal','Quantized signal');