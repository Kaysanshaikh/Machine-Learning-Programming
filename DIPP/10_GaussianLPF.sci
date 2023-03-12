//Gaussian LPF
clc;
//read image
a=imread("F:\dip\cameraman.jpg");
//convert to gray image
a=rgb2gray(a);
a=double(a);
//get row, col in c(1) and c(2)
c=size(a);
N=c(1);

D0=input('Enter the cut off-frequency: ');
//creatiomn of Ideal-LPF
for u=1:1:c(1)
    for v=1:1:c(2)
        //calcuation of distance between (u,v) from centre
        Dx=((u-N/2)^2 + (v-N/2)^2)^0.5;
        D=Dx*Dx;
        H(u,v)=exp(-D / (2*D0*D0));
        
    end
end

//Find 2D DFT of image
vv=fft2(a);
vc=fftshift(vv);

//Scaler multiplication = convolution in spatial domain
x=vc.*H;
X=abs(ifft(x));

//plot graph
subplot(2,2,1); imshow(uint8(a)); title("Original Image");
subplot(2,2,2); mesh(H); title("Mesh in 3D by 302");
subplot(2,2,3); imshow(H); title("Mesh using imshow by 302");
subplot(2,2,4); imshow(uint8(X)); title("Final Image by 302");
