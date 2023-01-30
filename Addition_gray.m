clc
clear all;
close all;
% Read in the two grayscale images
img1 = imread('sameSize.jpg');
img2 = imread('sameSize2.jpg');

% Perform the addition of the two images
img_sum = img1 + img2

% Display the resulting image
imshow(img_sum);
