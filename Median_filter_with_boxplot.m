% read an image
img = imread('Harish_agarwal_Gun.jpg');

% convert image to grayscale
img_gray = rgb2gray(img);

% add salt and pepper noise to the image
img_noisy = imnoise(img_gray, 'salt & pepper', 0.05);

% perform median filtering with 3x3 box filter
img_filtered_3x3 = medfilt2(img_noisy, [3 3]);

% perform median filtering with 5x5 box filter
img_filtered_5x5 = medfilt2(img_noisy, [5 5]);

% display original, noisy and filtered images
subplot(1,3,1);
imshow(img_gray);
title('Original Image');
subplot(1,3,2);
imshow(img_noisy);
title('Noisy Image');
subplot(1,3,3);
imshow(img_filtered_3x3);
title('Filtered Image 3x3');
subplot(1,3,4);
imshow(img_filtered_5x5);
title('Filtered Image 5x5');

