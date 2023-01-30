% read an image
img = imread('dooba.jpg');

% convert image to grayscale
img_gray = rgb2gray(img);

% define the gamma value
gamma = 1.5;

% perform gamma correction
img_gamma = double(img_gray) .^ gamma;

% display original and gamma corrected image
subplot(1,2,1);
imshow(img_gray);
title('Original Image');
subplot(1,2,2);
imshow(uint8(img_gamma));
title('Gamma Corrected Image');

