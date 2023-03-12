//Program to demonstrate butterworth low pass filter
//Read the input image 
//clc;
original1=imread("F:\dip\cameraman.jpg");
original=rgb2gray(original1);
original=double(original);
[m,n]=size(original);
//Set the cut off frequency 
fc=20;
//Specifying the filter order
N=1;
//Finding the center of image 
a=round(m/2);
b=round(n/2);
//Defining the filter kernel
//i and j are dimensions of input image
H=zeros(m,n);
for i=1:m
    for j=1:n
        d=((i-a)^2+(j-b)^2)^0.5;
        H(i,j)=1/(1+((d/fc)^(2*N)));
        
     end

end
//Input image to be shifted from spatial domain to frequency domain
original_freq=fftshift(fft2(original));
//H is filter function  ,multiplication in frequency domain is noting but convolution of image and apply the butterworth LPF
applpf=(original_freq).*H;
finalout=abs(ifft(applpf));
/*
lp1=fft2(original1);
lp2=fftshift(lp1);
lp3=lp2.*c;
lp4=abs(ifft2(lp3));
*/

subplot(2,2,1); imshow(original1); title("Original Image");
subplot(2,2,2); imshow(H); title("Surf using imshow by 302");
subplot(2,2,3); surf(H); title("Surf in 3D by 302");
subplot(2,2,4); imshow(uint8(finalout)); title("Final Image by 302");
