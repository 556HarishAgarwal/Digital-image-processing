% read an image
img = imread('Harish_agarwal_Gun.jpg');

% convert image to grayscale
img_gray = rgb2gray(img);

% perform median filtering
img_filtered = medfilt2(img_gray, [3 3]);

% display original and filtered image
subplot(1,2,1);
imshow(img_gray);
title('Original Image');
subplot(1,2,2);
imshow(img_filtered);
title('Filtered Image');

