pkg load communications
% Read in the two grayscale images
img1 = imread('sameSize.jpg');
img2 = imread('sameSize2.jpg');

% Perform the subtraction of the two images
img_diff = img1 - img2;
img_diff = max(img_diff,0);
img_diff = im2uint8(img_diff);

% Convert the resulting image to binary format
img_bin = de2bi(img_diff);

% Display the binary image
imshow(img_bin);
imshow(img_diff);
