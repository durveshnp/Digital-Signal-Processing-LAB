clear all;
N=10; %Length of sequence
n=0:1:N-1;
x=sin(2*pi*n/10)+sin(2*pi*n/5); %Input sequence
L=3 %Upsampling factor
x1=[zeros(1,L*N)];
n1=1:1:L*N;
j=1:L:L*N;
x1(j)=x;
subplot(2,1,1),stem(n,x)
xlabel('n');ylabel('x');
title('Input Sequence');
subplot(2,1,2),stem(n1,x1)
xlabel('n');ylabel('x1');
title('Upsampled Sequence');