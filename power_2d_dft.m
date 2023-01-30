% Read in an image
img = imread('tree.jpg');

% Perform the 2D DFT on the image
dft_result = fft2(img);

% Get the magnitude of the result
magnitude = abs(dft_result);

% Get the phase of the result
phase = angle(dft_result);

% Raise the magnitude to a power, say 2
magnitude = magnitude.^2;

% Reconstruct the DFT using the new magnitude and original phase
new_dft_result = magnitude .* exp(1i*phase);

% Perform the inverse DFT to get the image back in spatial domain
new_img = ifft2(new_dft_result);

% Display the original and new images
subplot(1, 2, 1);
imshow(img);
title("Original Image");
subplot(1, 2, 2);
imshow(real(new_img));
title("New Image after Power of 2 DFT");


