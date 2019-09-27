img1 = imread('blackbird.jpg');
img2 = imread('istanbul4.jpg');
r1 = 0.2989*img1(:,:,1) + 0.5870*img1(:,:,2) + 0.1140*img1(:,:,3);
r2 = 0.2989*img2(:,:,1) + 0.5870*img2(:,:,2) + 0.1140*img2(:,:,3);
c_0 = 5;
lgt1_0 = uint8(c_0.*log(double(1+(r1))));
lgt2_0 = uint8(c_0.*log(double(1+(r2))));
c_1 = 30;
lgt1_1 = uint8(c_1.*log(double(1+(r1))));
lgt2_1 = uint8(c_1.*log(double(1+(r2))));
c_2 = 60;
lgt1_2 = uint8(c_2.*log(double(1+(r1))));
lgt2_2 = uint8(c_2.*log(double(1+(r2))));
%rgb image 1
figure,
subplot(1,1,1),imshow(img1),title('Original Image');
%grayscale image 1 and its log tranformations
figure,
subplot(2,2,1),imshow(r1),title('Grayscale Image');
subplot(2,2,2),imshow(lgt1_0),title('Log Transformation (c = 5)');
subplot(2,2,3),imshow(lgt1_1),title('Log Transformation (c = 30)');
subplot(2,2,4),imshow(lgt1_2),title('Log Transformation (c = 60)');
%rgb image 2
figure,
subplot(1,1,1),imshow(img2),title('Original Image');
%grayscale image 2 and its log tranformations
figure,
subplot(2,2,1),imshow(r2),title('Grayscale Image');
subplot(2,2,2),imshow(lgt2_0),title('Log Transformation (c = 5)');
subplot(2,2,3),imshow(lgt2_1),title('Log Transformation (c = 30)');
subplot(2,2,4),imshow(lgt2_2),title('Log Transformation (c = 60)');