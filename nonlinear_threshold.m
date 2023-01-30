% read an image
img = imread('Harish_agarwal_Gun.jpg');

% perform threshold operation
threshold = 128;
img_threshold = img;
img_threshold(img_threshold < threshold) = 0;
img_threshold(img_threshold >= threshold) = 255;

% display original and thresholded image
subplot(1,2,1);
imshow(img);
title('Original Image');
subplot(1,2,2);
imshow(img_threshold);
title('Thresholded Image');

