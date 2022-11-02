clc;
clear;
close;
N = input("Enter the length sequence: ");
x = input("Enter the dicrete input sequence x(n): ");
for k = 1:N
    y(k)= 0;
    for n = 1:N
        y(k) = y(k) + x(n)*exp(-%i*2*%pi*(k-1)*(n-1)/N);
    end
end
disp("Discrete Fourier Trnsform X(k): ",round(y));
mag = abs(y);
subplot(2,1,1);
plot(mag);
title("Magnitude Spectrum");
xlabel("K samples");
ylabel("Magnitude");
disp("Magnitude spectrum values:",mag);
phase = atan(imag(y),real(y));
subplot(2,1,2);
plot(phase);
title("Phase Spectrum");
xlabel("K samples");
ylabel("Phase");
disp("Phase spectrum values:",phase);
for n = 1:N
    x(n) = 0;
    for k = 1:N
        x(n) = x(n) + y(k)*exp(%i*2*%pi*(n-1)*(k-1)/N)/N;
    end
end
disp("Inverse Discrete Fourier Trnsform x(n): ",round(x));
