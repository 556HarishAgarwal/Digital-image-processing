% read an image
img = imread('Harish_agarwal_Gun.jpg');

% extract the red, green, and blue components
red = img(:,:,1);
green = img(:,:,2);
blue = img(:,:,3);

% display the original image and the extracted color components
subplot(2,2,1);
imshow(img);
title('Original Image');
subplot(2,2,2);
imshow(red);
title('Red Component');
subplot(2,2,3);
imshow(green);
title('Green Component');
subplot(2,2,4);
imshow(blue);
title('Blue Component');

