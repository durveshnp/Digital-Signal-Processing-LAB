clear all;
close all;
clc;
wc=0.5*pi; %Cutoff frequency
N=25;
b=fir1(N,wc/pi,kaiser(N+1,0.5)); %Tuning parameter= 0.5
w=0:0.01:pi;
h=freqz(b,1,w);
plot(w/pi,20*log10(abs(h)),'g-');
hold on;
b=fir1(N,wc/pi,kaiser(N+1,3.5));
w=0:0.01:pi;
h=freqz(b,1,w);
plot(w/pi,20*log10(abs(h)),'r-');
hold on;
b=fir1(N,wc/pi,kaiser(N+1,8.5));
w=0:0.01:pi;
h=freqz(b,1,w);
plot(w/pi,20*log10(abs(h)),'b-');
xlabel('Normalized frequency \omega/\pi');
ylabel('Magnitude in dB');
legend('Tuning parameter 0.5', 'Tuning parameter 3.5', 'Tuning parameter 8.5');
hold off;