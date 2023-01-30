% read an image
img = imread('Harish_agarwal_Gun.jpg');

% convert image to grayscale
img_gray = rgb2gray(img);

% get the size of the image
[rows, cols] = size(img_gray);

% create a butterworth filter
D0 = 100; % cutoff frequency
n = 2; % filter order
[X, Y] = meshgrid(1:cols, 1:rows);
D = sqrt((X - cols/2).^2 + (Y - rows/2).^2);
H = 1./(1 + (D./D0).^(2*n));

% perform frequency domain filtering
img_fft = fft2(img_gray);
img_fft_filtered = img_fft .* H;
img_filtered = ifft2(img_fft_filtered);

% display original and filtered image
subplot(1,2,1);
imshow(img_gray);
title('Original Image');
subplot(1,2,2);
imshow(img_filtered);
title('Filtered Image');

