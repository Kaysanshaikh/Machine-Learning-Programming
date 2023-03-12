clc;
a=imread("f:\dip\lavender.jpg");
a=double(a);
[row  col dim]=size(a);
red=a(:,:,1);//gives grey scale image of red plane
green=a(:,:,2);
blue=a(:,:,3);
plane=zeros(row, col);
RED=cat(3,red,plane,plane);//ensures that red is 24 bit
GREEN=cat(3,plane,green,plane);
BLUE=cat(3,plane,plane,blue);
figure(1);
subplot(2,2,1);
imshow(uint8(a));
subplot(2,2,2);
imshow(uint8(red));
subplot(2,2,3);
imshow(uint8(green));
subplot(2,2,4);
imshow(uint8(blue));

figure(2);
subplot(2,2,1);
imshow(uint8(a));
subplot(2,2,2);
imshow(uint8(RED));
subplot(2,2,3);
imshow(uint8(GREEN));
subplot(2,2,4);
imshow(uint8(BLUE));
