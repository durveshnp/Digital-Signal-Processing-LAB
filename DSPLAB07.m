clear all;
close all;
x = [1 2 -1 2 3 -2 -3 -1 1 1 2 -1 0 0 0]
h = [1 2 3]
y = fftfilt(h,x,40)
