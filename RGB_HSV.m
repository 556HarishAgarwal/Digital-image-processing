% read an image
img = imread('Harish_agarwal_Gun.jpg');

% convert image from RGB to HSV color model
hsv_img = rgb2hsv(img);

% extract the hue, saturation and value components
hue = hsv_img(:,:,1);
saturation = hsv_img(:,:,2);
value = hsv_img(:,:,3);

% display the original image and the hsv components
subplot(2,2,1);
imshow(img);
title('Original Image');
subplot(2,2,2);
imshow(hue);
title('Hue Component');
subplot(2,2,3);
imshow(saturation);
title('Saturation Component');
subplot(2,2,4);
imshow(value);
title('Value Component');

