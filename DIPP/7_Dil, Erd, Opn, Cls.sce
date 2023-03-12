//DILATION -EROSION -OPENING - CLOSING OPERATION 
/*
clc;
adilate=zeros(10,10);
adilate(4:7,4:7)=1
disp("adilate");
disp(adilate);
struele=imcreatese("rect",3,3);

afterdilate=imdilate(adilate,struele);
disp("afterdilate");
disp(afterdilate);
afteropen=imopen(adilate,struele);
disp("afteropen");
disp(afteropen);

aerode=zeros(10,10);
aerode(4:7,4:7)=1
disp("aerode");
disp(aerode);
struele=imcreatese("rect",3,3);

aftererode=imerode(aerode,struele);
disp("aftererode");
disp(aftererode);
*/

//original=imread("c:\users\dell\documents\circuit.tif");
//original=imread("c:\users\dell\documents\circle.jpg");
original=imread("f:\dip\cameraman.jpeg")
figure(1);
title("Original Image") 
imshow(original);

//Specifing Structing Element as "Rectangle"
se=imcreatese("rect",3,3);

//dilation
dilate=imdilate(original,se);
figure(2);
title("Dilated Image By 302")
imshow(dilate);

//Erosion
erode=imerode(original,se);
figure(3);
title("Eroded Image By 302")
imshow(erode);

//Opening
afteropen=imopen(original,se);
figure(4);
title("Opened Image By 302")
imshow(afteropen);

//Closing
afterclose=imclose(original,se);
figure(5);
title("Closed Image By 302")
imshow(afterclose);


//Trying Different Structuring Element -> currently support 'rect', 'ellipse' and 'cross'
//Opening with SE -> Ellipse
S=imread("f:\dip\cameraman.jpeg");
se3 = imcreatese('ellipse',9,9);
S2 = imopen(S,se3);
figure(7);
title("Opening with SE -> Ellipse By 302")
imshow(S2);

//Closing with SE -> Ellipse
se = imcreatese('ellipse',11,11);
S2 = imclose(S,se);
figure(6);
title("Closing with SE -> Ellipse By 302")
imshow(S2);

/*
//Opening with SE -> Cross
S=imread("f:\dip\cameraman.jpeg");
se3 = imcreatese('cross',9,9);
S2 = imopen(S,se3);
figure(7);
title("Opening with SE -> Cross By 302")
imshow(S2);
*/
