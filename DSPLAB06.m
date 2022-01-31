clear all;

x = [1 2 2 1];
h = [1 2 1 0];
x1 = fft(x);
y1 = fft(h);

for i = 1:4,
z1 = x1(i)*y1(1);
end

disp(z1);
z = ifft(z1);
disp(z);
x2 = fft(x,8);
y2 = fft(h,8);

for i = 1:8,
z2(i) = x2(i)*y2(i);
end

disp(z2);
zz = ifft(z2);
disp(zz);