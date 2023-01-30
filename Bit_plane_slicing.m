
img = imread("tree.jpg");


img = uint8(img);


bitplanes = zeros(size(img,1), size(img,2), 8);


for i = 1:8
    bitplanes(:,:,i) = bitget(img, i);
end
for i = 1:8
    subplot(2,4,i);
    imshow(bitplanes(:,:,i));
    title(sprintf("Bitplane %d", i));
end

