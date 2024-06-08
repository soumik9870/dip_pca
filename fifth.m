mask3x3 = [1/9 1/9 1/9; 1/9 1/9 1/9; 1/9 1/9 1/9];
mask5x5 = [1/25 1/25 1/25 1/25 1/25;
           1/25 1/25 1/25 1/25 1/25;
           1/25 1/25 1/25 1/25 1/25;
           1/25 1/25 1/25 1/25 1/25;
           1/25 1/25 1/25 1/25 1/25];

image = imread('sherlock.jpg');

if ndims(image) == 3
  image = rgb2gray(image);
end

blurred_image_3x3 = conv2(image, mask3x3, 'same');
blurred_image_5x5 = conv2(image, mask5x5, 'same');

figure(1);

subplot(2,3,1);
imshow(image);
title('Original Image');

subplot(2,3,2);
imshow(blurred_image_3x3);
title('Blurred (3x3 Mask)');

subplot(2,3,4);
imshow(image);
title('Original Image');

subplot(2,3,5);
imshow(blurred_image_5x5);
title('Blurred (5x5 Mask)');

figure(2);

subplot(2,1,1);
imshow(mask3x3 ./ sum(mask3x3(:)));
title('3x3 Mask (Normalized)');

subplot(2,1,2);
imshow(mask5x5 ./ sum(mask5x5(:)));
title('5x5 Mask (Normalized)');
