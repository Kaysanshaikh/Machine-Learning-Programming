//Grey level slicing without background
//Thresholding splits grey level into two parts. w//e need to highlight specific range of grey value//s for eg. enhancing flaws in X-ray image . here //we select a band of grey level values.First we u//se Grey level slicing without background. s=L-1 //for a<=r<=b. 
clc;
original=imread("f:\dip\cameraman.jpeg");
doub=double(original);
[row column]=size(doub);
for i=1:1:row
    for j=1:1:column
        if((doub(i,j)> 50)) && (doub(i,j)<150)
            doub(i,j)=0;
        end
     end
end
figure(1), imshow(original);
figure(2),imshow(uint8(doub));
