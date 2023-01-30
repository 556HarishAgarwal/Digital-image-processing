% Read the image
img = imread("Harish_agarwal_Gun.jpg");

% Specify the gamma value
gamma = 0.5;

% Perform gamma correction
img_corrected = img .^ (1/gamma);

% Display the original and corrected images
subplot(1, 2, 1);
imshow(img);
title("Original Image");
subplot(1, 2, 2);
imshow(img_corrected);
title("Gamma Corrected Image (gamma = 0.5)");

