clear all;
N=30; %Length of sequence
n=0:1:N-1;
x=sin(2*pi*n/20)+sin(2*pi*n/15); %Input sequence
M=3 %Downsampling factor
x1=x(1:M:N);
n1=1:1:N/M;
subplot(2,1,1),stem(n,x)
xlabel('n');ylabel('x');
title('Input Sequence');
subplot(2,1,2),stem(n1-1,x1)
xlabel('n');
ylabel('x1');
title('Downsampled Sequence');