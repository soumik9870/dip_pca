image = imread('sherlock.jpg');

bright_image = imadjust(image, [0.2, 1], []);

dim_image = imadjust(image, [0, 0.8], []);

negative_image = 255 - image;

subplot(2,2,1); imshow(image); title('Original Image');
subplot(2,2,2); imshow(bright_image); title('Increased Brightness');
subplot(2,2,3); imshow(dim_image); title('Decreased Brightness');
subplot(2,2,4); imshow(negative_image); title('Negative Image');
