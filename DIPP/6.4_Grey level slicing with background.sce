//Grey level slicing with background
//in some application we not only need to enhance //band of grey levels but also to retain backgroun//d. The transformation is: s=L-1,for a<=r<=b and //s=r for all other values.
clc;
original=imread("f:\dip\cameraman.jpeg");
doub=double(original);
[row column]=size(doub);
for i=1:1:row
    for j=1:1:column
        if((doub(i,j)> 50)) && (doub(i,j)<150)
            doub(i,j)=original(i,j);
        end
     end
end
figure(1), imshow(original);
figure(2),imshow(uint8(doub));
