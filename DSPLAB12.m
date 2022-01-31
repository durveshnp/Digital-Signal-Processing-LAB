clear all;
close all;
clc;
wc=0.5*pi;
N=55
alpha=(N-1)/2;
eps=0.001;
n=0:1:N-1
hd1=sin(wc*(n-alpha+eps))
hd2=pi*(n-alpha+eps)
hd=(hd1)./(hd2)
%hd=sin(wc*(n-alpha+eps))/pi*(n-alpha+eps);
wr=boxcar(N); %Rectangular window sequence 
hn=hd.*wr'; %Filter coefficients
w=0:0.01:pi;
h=freqz(hn,1,w);
plot(w/pi,abs(h));
hold on;
wh=hamming(N);
hn=hd.*wh';
w=0:0.01:pi;
h=freqz(hn,1,w);
plot(w/pi,abs(h));
hold on;
wh=hamming(N);
hn=hd.*wh';
w=0:0.01:pi;
h=freqz(hn,1,w);
plot(w/pi,abs(h),'r.');
wb=blackman(N); %Blackman window sequence
hn=hd.*wb'; %Filter coefficients
w=0:0.01:pi;
h=freqz(hn,1,w);
plot(w/pi,abs(h),'g-.');
legend ('Boxcar Window', 'Hamming Window', 'Blackman Window');
xlabel('Normalized Frequency');
ylabel('Magnitude'); hold off