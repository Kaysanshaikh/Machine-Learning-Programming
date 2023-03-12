// clearing the output screen
//Bit plane slicing is used in image compression.
clc;
  
//reading image's pixel in c
c=imread("f:\dip\cameraman.jpg");
  
//storing image information in cd
cd = double(c);
  
//extracting all bit one by one
//from 1st to 8th in variable
//from c1 to c8 respectively
//an image8 bit word, then the 0th bit plane consists of  last bit of each grey value. as the last bit has the least effectin terms of the magnitude of the value, it is called LSB and the corresponding plane, a lsb plane. similarly 7th bit plane consists of first bit in each value. so it is MSB plane.for a grey scale image, we start by making it a matrix of type double and so we can perform arithmatic on the values. and now we isolate bit plane by diving matrix cd by successive powers of two , neglecting the remainder and checking whether final bit is 0 or 1 using mod function. 

c1 = modulo(cd, 2);
c2 = modulo(floor(cd/2), 2);
c3 = modulo(floor(cd/4), 2);
c4 = modulo(floor(cd/8), 2);
c5 = modulo(floor(cd/16), 2);
c6 = modulo(floor(cd/32), 2);
c7 = modulo(floor(cd/64), 2);
c8 = modulo(floor(cd/128), 2);
  
//combining image again to form equivalent to ori//ginal grayscale image
cc = (2 * (2 * (2 * (2 * (2 * (2 * (2 * c8 + c7) + c6) + c5) + c4) + c3) + c2) + c1);
  
//plotting original image in first subplot
subplot(2, 5, 1);
imshow(c);
title('Original Image');
  
//plotting binary image having extracted bit from //1st to 8th
// in subplot from 2nd to 9th
subplot(2, 5, 2);
imshow(c1);
title('Bit Plane 1');
subplot(2, 5, 3);
imshow(c2);
title('Bit Plane 2');
subplot(2, 5, 4);
imshow(c3);
title('Bit Plane 3');
subplot(2, 5, 5);
imshow(c4);
title('Bit Plane 4');
subplot(2, 5, 6);
imshow(c5);
title('Bit Plane 5');
subplot(2, 5, 7);
imshow(c6);
title('Bit Plane 6');
subplot(2, 5, 8);
imshow(c7);
title('Bit Plane 7');
subplot(2, 5, 9);
imshow(c8);
title('Bit Plane 8');
  
//plotting recombined image in 10th subplot
subplot(2, 5, 10);
imshow(uint8(cc));
title('Recombined Image');
