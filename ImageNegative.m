img1 = imread('blackbird.jpg');
ng1 = img1; %copy of the image for image negative
for r = 1 : size(ng1, 1)
    for g = 1 : size(ng1, 2)
        for b = 1 : size(ng1, 3)
            ng1(r, g, b) = 255 - img1(r, g, b);
        end
    end
end         
img2 = imread('istanbul4.jpg');
ng2 = img2; %copy of the image for image negative
for r = 1 : size(ng2, 1)
    for g = 1 : size(ng2, 2)
        for b = 1 : size(ng2, 3)
            ng2(r, g, b) = 255 - img2(r, g, b);
        end
    end
end
gsi1 = rgb2gray(img1); %rgb to grayscale conversion
gng1 = gsi1; %copy of the converted grayscale image for image negative
for r = 1 : size(gng1, 1)
    for g = 1 : size(gng1, 2)
        for b = 1 : size(gng1, 3)
            gng1(r, g, b) = 255 - gsi1(r, g, b);
        end
    end
end
gsi2 = rgb2gray(img2); %rgb to grayscale conversion
gng2 = gsi2; %copy of the converted grayscale image for image negative
for r = 1 : size(gng2, 1)
    for g = 1 : size(gng2, 2)
        for b = 1 : size(gng2, 3)
            gng2(r, g, b) = 255 - gsi2(r, g, b);
        end
    end
end
%image 1
figure,
subplot(2,2,1),imshow(img1),title('Original Image');
subplot(2,2,2),imshow(ng1),title('Image Negative');
subplot(2,2,3),imshow(gsi1),title('Grayscale Image');
subplot(2,2,4),imshow(gng1),title('Image Negative');
%image 2
figure,
subplot(2,2,1),imshow(img2),title('Original Image');
subplot(2,2,2),imshow(ng2),title('Image Negative');
subplot(2,2,3),imshow(gsi2),title('Grayscale Image');
subplot(2,2,4),imshow(gng2),title('Image Negative');