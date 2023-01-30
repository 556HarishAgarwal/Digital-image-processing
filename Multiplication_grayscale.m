% Read in the two grayscale images
img1 = imread('sameSize.jpg');
img2 = imread('sameSize2.jpg');

% Perform the multiplication of the two images
img_product = img1 .* img2;

% Display the resulting image
imshow(img_product);

