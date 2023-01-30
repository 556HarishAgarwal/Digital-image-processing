% read an image
img = imread('Harish_agarwal_Gun.jpg');

% convert image to grayscale
img_gray = rgb2gray(img);

% define the filter kernel
kernel = [1 2 1; 2 4 2; 1 2 1]/16;

% perform filtering
img_filtered = imfilter(img_gray, kernel);

% display original and filtered image
subplot(1,2,1);
imshow(img_gray);
title('Original Image');
subplot(1,2,2);
imshow(img_filtered);
title('Filtered Image');

