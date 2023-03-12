// Negative image
//Displaying of an X-ray image.It implies invertin//g grey level.Black in original will look white a//nd vice versa.Formula is : s=(L-1)-r, L is numbe//r of grfey levels ,256 
clc;
original=imread("f:\dip\neg1.jpg");
imgdouble=double(original);
//For 8 bit image
c=255;
negative=c-original;
figure(1)
imshow(uint8(original));
figure(2)
imshow(uint8(negative));
