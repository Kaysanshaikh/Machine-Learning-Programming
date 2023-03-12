// Image Quantization
clc;
clear all;
I=imread("F:\dip\cameraman.jpeg");
I=double(I);
disp("i===",I);
//disp(I);
//I=I+1
b=max(I)
disp("b=",b);
disp("By 302");
a=input("How many bits you want 1,2,4,6:  ")
c=b/(2*a);
f=floor(I/c);
disp("f=",f)
f1=(f*255)/max(f);
figure(1)
title('Original');
imshow(uint8(I))
figure(2)
title('Quantize 1_BIT');
imshow(uint8(f1))
