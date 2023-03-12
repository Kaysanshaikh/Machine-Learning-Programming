//Thresholding
//Extreme contrast stretching (increase contrast o//f images by making dark portion darkerand bright// portion brighter)yields thresholding.For this w//e make first and last slope zero and the center //slope is increased.Thus r1=r2, s1=0 and s2=L-1.L//is number of grey levels.
clc;
original=imread("f:\dip\cameraman.jpeg");
dup=original;
[row column]=size(dup);
disp("By 302");
thresh=input("Enter value of threshold: ");
for i=1:row
    for j=1:column
        if(original(i,j)< thresh)
            dup(i,j)=0;
        else
            dup(i,j)=255;
        end
     end
end
figure(1),imshow(original);
figure(1),imshow(dup);
