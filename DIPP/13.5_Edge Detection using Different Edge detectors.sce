
// Scilab code for Edge Detection using Different Edge detectors
// [1] Sobel 
// [2] Prewitt
// [3] Log
// [4] Canny

close ;
clc ;
a = imread ('C:\Users\Admin\Desktop/download.jpg');
a = rgb2gray(a);
c = edge (a, 'sobel');
d = edge (a, 'prewitt');
e = edge (a, 'log');
f = edge (a, 'canny');

subplot(2, 3, 1);
imshow(a)
title ('Original Image')

subplot(2, 3, 2);
imshow(c)
title ('Sobel')

subplot(2, 3, 3);
imshow(d)
title('Prewitt')

subplot(2, 3, 4);
imshow(e)
title ('Log')

subplot(2, 3, 5);
imshow(f)
title ('Canny')



/*
Conclusion:
Robert mask is an even sized mask ( 2 x 2 ). Masks of even sizes are not suitable for implementation. The differential along the diagonals of a 2 x 2 mask is used and the edge value after the convolution corresponds to the central point ( r – ½ , c – ½ )
This problem can be avoided by using 3 x e Prewitts or Sobel mask.
Sum of the coefficients of each of the masks used in this experiment is 0. Edge detection is demonstrated using High Pass filters,
Prewitt and Sobel operators perform well providing a smoothing effect along with differentiation.
*/
