% Read in the two images to be convolved
img1 = imread('tree.jpg');
img2 = imread('girl.jpeg');

% Perform the convolution in the spatial domain
conv_result = conv2(img1, img2);

% Perform the fast Fourier transform (FFT) on both images
fft_img1 = fft2(img1);
fft_img2 = fft2(img2);

% Perform the multiplication in the frequency domain
mult_result = fft_img1 .* fft_img2;

% Perform the inverse FFT to get the result in spatial domain
conv_result_frequency = ifft2(mult_result);

% Compare the results in spatial domain
diff = conv_result - real(conv_result_frequency);
max_diff = max(max(diff))

% Display the comparison
imshow(diff);

