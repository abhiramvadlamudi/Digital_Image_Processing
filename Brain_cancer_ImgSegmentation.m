
image = imread('brain_image.jpg'); 

% Converting the image to grayscale if it's not already
if size(image, 3) == 3
    image_gray = rgb2gray(image);
else
    image_gray = image;
end

% Applying a threshold to segment the tumor
threshold = 128; 
binary_image = image_gray > threshold;

% Performing morphological operations to clean up the segmentation
se = strel('disk', 5); % Adjust the disk size as needed
binary_image = imopen(binary_image, se);

subplot(1, 2, 1);
imshow(image_gray);
title('Original Image');

subplot(1, 2, 2);
imshow(binary_image);
title('Segmented Tumor');


imwrite(binary_image, 'segmented_tumor.jpg');
image = imread('brain_image.jpg'); 

% Converting the image to grayscale if it's not already
if size(image, 3) == 3
    image_gray = rgb2gray(image);
else
    image_gray = image;
end

% Applying a threshold to segment the tumor
threshold = 128; 
binary_image = image_gray > threshold;

% Performing morphological operations to clean up the segmentation
se = strel('disk', 5); % Adjust the disk size as needed
binary_image = imopen(binary_image, se);

% Creating a subplot to display both images
subplot(1, 2, 1);
imshow(image_gray);
title('Original Image');

subplot(1, 2, 2);
imshow(binary_image);
title('Segmented Tumor');

