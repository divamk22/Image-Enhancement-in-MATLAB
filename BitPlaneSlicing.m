% rgb image 1
img1 = imread('blackbird.jpg');
b1 = double(bitget(img1,1));
b2 = double(bitget(img1,2));
b3 = double(bitget(img1,3));
b4 = double(bitget(img1,4));
b5 = double(bitget(img1,5));
b6 = double(bitget(img1,6));
b7 = double(bitget(img1,7));
b8 = double(bitget(img1,8));
%grayscale image 1
gs1 = rgb2gray(img1);
d1 = double(bitget(gs1,1));
d2 = double(bitget(gs1,2));
d3 = double(bitget(gs1,3));
d4 = double(bitget(gs1,4));
d5 = double(bitget(gs1,5));
d6 = double(bitget(gs1,6));
d7 = double(bitget(gs1,7));
d8 = double(bitget(gs1,8));
%rgb image 2
img2 = imread('istanbul4.jpg');
c1 = double(bitget(img2,1));
c2 = double(bitget(img2,2));
c3 = double(bitget(img2,3));
c4 = double(bitget(img2,4));
c5 = double(bitget(img2,5));
c6 = double(bitget(img2,6));
c7 = double(bitget(img2,7));
c8 = double(bitget(img2,8));
%grayscale image 2
gs2 = rgb2gray(img2);
f1 = double(bitget(gs2,1));
f2 = double(bitget(gs2,2));
f3 = double(bitget(gs2,3));
f4 = double(bitget(gs2,4));
f5 = double(bitget(gs2,5));
f6 = double(bitget(gs2,6));
f7 = double(bitget(gs2,7));
f8 = double(bitget(gs2,8));
%rgb image 1
figure,
imshow(img1), title('Original Image:');
%bit plane slicing of rgb image 1
figure, 
subplot(2,4,1)
imshow(b1), title('Bit Plane 1');
subplot(2,4,2)
imshow(b2), title('Bit Plane 2');
subplot(2,4,3)
imshow(b3), title('Bit Plane 3');
subplot(2,4,4)
imshow(b4), title('Bit Plane 4'); 
subplot(2,4,5)
imshow(b5), title('Bit Plane 5');
subplot(2,4,6)
imshow(b6), title('Bit Plane 6');
subplot(2,4,7)
imshow(b7), title('Bit Plane 7');
subplot(2,4,8)
imshow(b8), title('Bit Plane 8');
%grayscale image 1
figure,
imshow(gs1), title('Grayscale Image:');
%bit plane slicing of image 1
figure, 
subplot(2,4,1)
imshow(d1), title('Bit Plane 1');
subplot(2,4,2)
imshow(d2), title('Bit Plane 2');
subplot(2,4,3)
imshow(d3), title('Bit Plane 3');
subplot(2,4,4)
imshow(d4), title('Bit Plane 4'); 
subplot(2,4,5)
imshow(d5), title('Bit Plane 5');
subplot(2,4,6)
imshow(d6), title('Bit Plane 6');
subplot(2,4,7)
imshow(d7), title('Bit Plane 7');
subplot(2,4,8)
imshow(d8), title('Bit Plane 8');
%rgb image 2
figure,
imshow(img2), title('Original Image:');
%bit plane slicing of image 2
figure, 
subplot(2,4,1)
imshow(c1), title('Bit Plane 1');
subplot(2,4,2)
imshow(c2), title('Bit Plane 2');
subplot(2,4,3)
imshow(c3), title('Bit Plane 3');
subplot(2,4,4)
imshow(c4), title('Bit Plane 4'); 
subplot(2,4,5)
imshow(c5), title('Bit Plane 5');
subplot(2,4,6)
imshow(c6), title('Bit Plane 6');
subplot(2,4,7)
imshow(c7), title('Bit Plane 7');
subplot(2,4,8)
imshow(c8), title('Bit Plane 8');
%grayscale image 2
figure,
imshow(gs2), title('Grayscale Image:');
%bit plane slicing of image 2
figure, 
subplot(2,4,1)
imshow(f1), title('Bit Plane 1');
subplot(2,4,2)
imshow(f2), title('Bit Plane 2');
subplot(2,4,3)
imshow(f3), title('Bit Plane 3');
subplot(2,4,4)
imshow(f4), title('Bit Plane 4'); 
subplot(2,4,5)
imshow(f5), title('Bit Plane 5');
subplot(2,4,6)
imshow(f6), title('Bit Plane 6');
subplot(2,4,7)
imshow(f7), title('Bit Plane 7');
subplot(2,4,8)
imshow(f8), title('Bit Plane 8');