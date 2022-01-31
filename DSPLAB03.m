N = 4;
x = [8.0000+0.0000i 3.0000+1.0000i -6.0000+0.0000i  3.0000-1.0000i];
y = ifft(x);
t=0:N-1;
subplot(311)
stem(t,y)
xlabel('Time(s)');
ylabel('Amplitude');
title('Input sequence')