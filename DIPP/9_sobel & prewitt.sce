clc;
clear all;
a=imread("F:\dip\cute_11.jpg");
a=double(a);
//[m,n]=size(a);

//Code For Prewitt
w1=[-1 -1 -1; 0 0 0; 1 1 1];
w2=[-1 0 1; -1 0 1; -1 0 1];
[row col]=size(a);
for x=2:row-1
    for y=2:col-1
        a1(x,y)=[w1(1)*a(x-1,y-1)+w1(2)*a(x-1,y)+w1(3)*a(x-1,y+1)+w1(4)*a(x,y-1)+w1(5)*a(x,y)+w1(6)*a(x,y+1)+w1(7)*a(x+1,y-1)+w1(8)*a(x+1,y)+w1(9)*a(x+1,y+1)];
        a2(x,y)=w2(1)*a(x-1,y-1)+w2(2)*a(x-1,y)+w2(3)*a(x-1,y+1)+w2(4)*a(x,y-1)+w2(5)*a(x,y)+w2(6)*a(x,y+1)+w2(7)*a(x+1,y-1)+w2(8)*a(x+1,y)+w2(9)*a(x+1,y+1);
     end   
end

//Code For Sobel
s1=[-1 -2 -1; 0 0 0; 1 2 1];
s2=[-1 0 1; -2 0 2; -1 0 1];
[row col]=size(a);
for x=2:row-1
    for y=2:col-1
        b1(x,y)=[s1(1)*a(x-1,y-1)+s1(2)*a(x-1,y)+s1(3)*a(x-1,y+1)+s1(4)*a(x,y-1)+s1(5)*a(x,y)+s1(6)*a(x,y+1)+s1(7)*a(x+1,y-1)+s1(8)*a(x+1,y)+s1(9)*a(x+1,y+1)];
        b2(x,y)=s2(1)*a(x-1,y-1)+s2(2)*a(x-1,y)+s2(3)*a(x-1,y+1)+s2(4)*a(x,y-1)+s2(5)*a(x,y)+s2(6)*a(x,y+1)+s2(7)*a(x+1,y-1)+s2(8)*a(x+1,y)+s2(9)*a(x+1,y+1);
     end   
end

figure(1)
subplot(2,2,1);imshow(uint8(a));title("Original Image");
subplot(2,2,2);imshow(uint8(a1));title("Prewitt Y Gradient by 302");
subplot(2,2,3);imshow(uint8(a2));title("Prewitt X Gradient by 302");
outPrewitt=a1+a2;
subplot(2,2,4);imshow(uint8(outPrewitt));title("Prewitt Output by 302");


figure(2)
subplot(2,2,1);imshow(uint8(a));title("Original Image");
subplot(2,2,2);imshow(uint8(b1));title("Sobel Y Gradient by 302");
subplot(2,2,3);imshow(uint8(b2));title("Sobel X Gradient by 302");
outSobel=b1+b2;
subplot(2,2,4);imshow(uint8(outSobel));title("Sobel Output by 302");

