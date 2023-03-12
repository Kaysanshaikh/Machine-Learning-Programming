
//Edge Detection using Ordinary operator
clc;
//read image
a=imread('f:\dip\lavender.jpg');
//convert to gray image
a=rgb2gray(a);
a=double(a);
//get row, col in c(1) and c(2)
[row col]=size(a);
//Ordinary operators
w1=[1 0; -1 0];
w2=[1 -1; 0 0];

for x=2:1:row-1
    for y=2:1:col-1
        a1(x,y)=w1(1)*a(x,y) + w1(2)*a(x,y+1) + w1(3)*a(x+1,y) + w1(4)*a(x+1,y+1);
        a2(x,y)=w2(1)*a(x,y) + w2(2)*a(x,y+1) + w2(3)*a(x+1,y) + w2(4)*a(x+1,y+1);
    end
end

a3=a1+a2;
subplot(2,2,1);imshow(uint8(a1))
title('X-gradient image')

subplot(2,2,2);imshow(uint8(a2))
title('Y-gradient image')

subplot(2,2,3);imshow(uint8(a3))
title('Resultant gradient image')



/*
Conclusion:
Robert mask is an even sized mask ( 2 x 2 ). Masks of even sizes are not suitable for implementation. The differential along the diagonals of a 2 x 2 mask is used and the edge value after the convolution corresponds to the central point ( r – ½ , c – ½ )
This problem can be avoided by using 3 x e Prewitts or Sobel mask.
Sum of the coefficients of each of the masks used in this experiment is 0. Edge detection is demonstrated using High Pass filters,
Prewitt and Sobel operators perform well providing a smoothing effect along with differentiation.
*/
