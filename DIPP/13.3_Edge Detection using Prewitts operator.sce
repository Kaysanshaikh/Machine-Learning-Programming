//Edge Detection using Prewitts operator
clc;
//read image
a=imread('f:\dip\cute2.jpg');
//convert to gray image
a=rgb2gray(a);
a=double(a);
//get row, col in c(1) and c(2)
[row col]=size(a);
//Prewitts operators
w1=[-1 -1 -1; 0 0 0; 1 1 1];
w2=[-1 0 1; -1 0 1; -1 0 1];

for x=2:1:row-1
    for y=2:1:col-1
      a1(x,y)=w1(1)*a(x-1,y-1) + w1(2)*a(x-1,y) + w1(3)*a(x-1,y+1) + w1(4)*a(x,y-1)+w1(5)*a(x,y) + w1(6)*a(x,y+1) +w1(7)*a(x+1,y-1) + w1(8)*a(x+1,y) + w1(9)*a(x+1,y+1);

      a2(x,y)=w2(1)*a(x-1,y-1) + w2(2)*a(x-1,y) + w2(3)*a(x-1,y+1) + w2(4)*a(x,y-1)+w2(5)*a(x,y) + w2(6)*a(x,y+1) +w2(7)*a(x+1,y-1) + w2(8)*a(x+1,y) + w2(9)*a(x+1,y+1);
      
      end
end

a3=a1+a2;


subplot(2,2,1);imshow(uint8(a))
title('Original image')

subplot(2,2,2);imshow(uint8(a1))
title('X-gradient image')

subplot(2,2,3);imshow(uint8(a2))
title('Y-gradient image')

subplot(2,2,4);imshow(uint8(a3))
title('Resultant gradient image')
