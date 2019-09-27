img1 = imread('blackbird.jpg');
img2 = imread('istanbul4.jpg');
gs1 = rgb2gray(img1);
gs2 = rgb2gray(img2);
gnimg1 = imnoise(gs1,'gaussian');
gnimg2 = imnoise(gs2,'gaussian');
w=(1/9)*ones(3,3);
    [ma1, na1] = size(gnimg1);
    [ma2, na2] = size(gnimg2);
    [mb, nb] = size(w);
    c = zeros(ma1 + mb - 1, na1 + nb - 1);
    d = zeros(ma2 + mb - 1, na2 + nb - 1);
    %image 1
    for i = 1 : mb
        for j = 1 : nb
            r1 = i;
            r2 = r1 + ma1 - 1;
            c1 = j;
            c2 = c1 + na1 - 1;
            c(r1 : r2, c1 : c2) = c(r1 : r2, c1 : c2) + w(i, j) * double(gnimg1);
        end
    end
        r1 = floor(mb/2) + 1;
        r2 = r1 + ma1 - 1;
        c1 = floor(nb/2) + 1;
        c2 = c1 + na1 - 1;
        c = c(r1 : r2, c1: c2);
    %image 2
    for i = 1 : mb
        for j = 1 : nb
            s1 = i;
            s2 = s1 + ma2 - 1;
            d1 = j;
            d2 = d1 + na2 - 1;
            d(s1 : s2, d1 : d2) = d(s1 : s2, d1 : d2) + w(i, j) * double(gnimg2);
        end
    end
        s1 = floor(mb/2) + 1;
        s2 = s1 + ma2 - 1;
        d1 = floor(nb/2) + 1;
        d2 = d1 + na2 - 1;
        d = d(s1 : s2, d1: d2);
%image 1
figure,
subplot(2,2,1),imshow(img1),title('Original Image');
subplot(2,2,2),imshow(gs1),title('Grayscale Image');
subplot(2,2,3),imshow(gnimg1),title('Grayscale Image with Gaussian Noise');
subplot(2,2,4),imshow(uint8(c)),title('Image Average');
%image 2
figure,
subplot(2,2,1),imshow(img2),title('Original Image');
subplot(2,2,2),imshow(gs2),title('Grayscale Image');
subplot(2,2,3),imshow(gnimg2),title('Grayscale Image with Gaussian Noise');
subplot(2,2,4),imshow(uint8(d)),title('Image Average');