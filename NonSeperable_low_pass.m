% read an image
img = imread('Harish_agarwal_Gun.jpg');

% convert image to grayscale
img_gray = rgb2gray(img);

% define the kernel for the non-separable filter
kernel = [1 3 1; 2 4 2; 1 1 2] / 16;

% perform convolution using the kernel
img_filtered = conv2(img_gray, kernel, 'same');

% display original and filtered image
subplot(1,2,1);
imshow(img_gray);
title('Original Image');
subplot(1,2,2);
imshow(img_filtered);
title('Filtered Image');

