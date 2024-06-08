image = imread('sherlock.jpg');

if ndims(image) == 3
  image = rgb2gray(image);
end

equalized_image = histeq(image);

subplot(2,2,1);
imhist(image);
title('Original Image Histogram');

subplot(2,2,2);
imhist(equalized_image);
title('Equalized Image Histogram');

subplot(2,2,3);
imshow(image);
title('Original Image');

subplot(2,2,4);
imshow(equalized_image);
title('Equalized Image');

original_std = std2(image);
equalized_std = std2(equalized_image);

disp('Standard deviation (original):');
disp(original_std);

disp('Standard deviation (equalized):');
disp(equalized_std);
