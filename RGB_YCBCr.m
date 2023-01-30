% read an image
img = imread('Harish_agarwal_Gun.jpg');

% convert image from RGB to YCbCr color model
ycbcr_img = rgb2ycbcr(img);

% extract the Y, Cb and Cr components
Y = ycbcr_img(:,:,1);
Cb = ycbcr_img(:,:,2);
Cr = ycbcr_img(:,:,3);

% display the original image and the YCbCr components
subplot(2,2,1);
imshow(img);
title('Original Image');
subplot(2,2,2);
imshow(Y);
title('Y Component');
subplot(2,2,3);
imshow(Cb);
title('Cb Component');
subplot(2,2,4);
imshow(Cr);
title('Cr Component');

