close all;
clc;
x = [2 3 -1 4];
N = length(x);
X = fft(x,N);
t = 0:N-1;
subplot(311)
stem(t,x);
xlabel('Time(s)');
ylabel('Amplitude');
title('Time domain - Input sequence')
subplot(312)
stem(t,x)
xlabel('Frequency');
ylabel('|X(k)|');
title('Frequency domain - Magnitude response')
subplot(313)
stem(t,angle(X))
xlabel('Frequency');
ylabel('Phase');
title('Frequency domain - phase response')