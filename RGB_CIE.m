% read an image
img = imread('Harish_agarwal_Gun.jpg');

% convert image from RGB to CIELab color model
cie_img = rgb2lab(img);

% extract the L, a and b components
L = cie_img(:,:,1);
a = cie_img(:,:,2);
b = cie_img(:,:,3);

% display the original image and the CIELab components
subplot(2,2,1);
imshow(img);
title('Original Image');
subplot(2,2,2);
imshow(L);
title('L Component');
subplot(2,2,3);
imshow(a);
title('a Component');
subplot(2,2,4);
imshow(b);
title('b Component');

