% read an image
img = imread('Harish_agarwal_Gun.jpg');

% convert image to grayscale
img_gray = rgb2gray(img);

% define the range of gray levels to keep
low_level = 100;
high_level = 150;

% perform gray level slicing
img_sliced = img_gray;
img_sliced(img_sliced < low_level) = 0;
img_sliced(img_sliced > high_level) = 0;

% display original and sliced image
subplot(1,2,1);
imshow(img);
title('Original Image');
subplot(1,2,2);
imshow(img_sliced);
title('Gray Level Sliced Image');

