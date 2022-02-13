%ID : 19-39377-1
A1 = 19;
A2 = 71;
CDEF = 3937;
j1 = 97*(pi/180);
j2 = 30*(pi/180);
t=-1.5/CDEF:3/2000000:1.5/CDEF;

x1=A1*cos((2*pi*CDEF*t)+j1);
x2=A2*cos((2*pi*CDEF*t)+j2);

plot(t,x1,'r','linewidth',2);
hold on;
plot(t,x2,'b','linewidth',2);
hold on;
title("Plotting two Signal");
xlabel('Time')
ylabel('Amplitude ')


subplot(3,1,1)
plot(t,x1,'r')
xlabel("time (sec)")
ylabel("Amplitude")
title("x1(t)")
subplot(3,1,2)
plot(t,x2,'b')
xlabel("time (sec)")
ylabel("Amplitude")
title("x2(t)");

x3=x1+x2;
subplot(3,1,3)
plot(t,x3,'g')
xlabel("time (sec)")
ylabel("Amplitude")
title("x3(t)=x1(t)+x2(t)")


