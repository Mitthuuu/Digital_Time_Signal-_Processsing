clc;
clear;
close;
N = input("Enter the length of the sequence: ");
x1 = input("Enter the first sequence: ");
x2 = input("Enter the second sequence: ");
for k=1:N
    X1(k)=0;
    for n=1:N
        X1(k) = X1(k)+x1(n)*exp(-%i*2*%pi*(k-1)*(n-1)/N);
    end
end
disp("X1(k): ",round(X1));
for k=1:N
    X2(k)=0;
    for n=1:N
        X2(k) = X2(k)+x2(n)*exp(-%i*2*%pi*(k-1)*(n-1)/N);
    end
end
disp("X2(k): ",round(X2));
X3 = X1.*X2;
disp("X3(k)= X1(k)*X2(k): ",round(X3));
for n=1:N
    x3(n) = 0;
    for k=1:N
        x3(n) = x3(n) + X3(k)*exp(%i*2*%pi*(k-1)*(n-1)/N)/N;
    end
end
disp("The IDFT seuence x3(n): ",round(x3));
