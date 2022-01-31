clc;

t = 0:0.1:pi;
y = sin(2*pi*t);
subplot(3,2,1);
plot(t,y);
ylabel('Voltage(Volts)->');
xlabel('(a)time(Sec)->');
title('SINE SEQUENCE');
clc;

t = 0:0.1:pi;
y = cos(2*pi*t);
subplot(3,2,2);
plot(t,y);
ylabel('Voltage(Volts)->');
xlabel('(b)time(Sec)->');
title('COSINE SEQUENCE');
clc;

n1 = input('Enter the length of the ramp signal');
t = 0:n1;
subplot(3,2,3);
stem(t,t);
ylabel('Voltage(Volts)->');
xlabel('(c)N->');
title('RAMP SEQUENCE');
clc;

n2 = input('Enter the length of the exponential signal');
t = 0:n2;
a = input('Enter the "a" value: ');
y2 = exp(a*t);
subplot(3,2,4);
stem(t,y2);
ylabel('Voltage(Volts)->');
xlabel('(d)N->');
title('EXPONENTIAL SEQUENCE');
clc;

n3 = input('Enter the length of the unit signal');
t = 0:1:n3-1;
y1 = ones(1,n3);
subplot(3,2,5);
stem(t,y1);
ylabel('Voltage(Volts)->');
xlabel('(e)N->');
title('UNIT STEP SEQUENCE');
clc;

t = -5:5;
y = [zeros(1,5),ones(1,1),zeros(1,5)];
subplot(3,2,6);
stem(t,y);
ylabel('Voltage(Volts)->');
xlabel('(f)N->');
title('UNIT IMPULSE SEQUENCE');
clc;
