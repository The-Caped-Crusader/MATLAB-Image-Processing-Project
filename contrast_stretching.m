function [img2] = contrast_stretching(img1)

histarrold=zeros(256,1);
[H W l]=size(img1);

if l>1
img1=im2gray(img1);
end
minimum_pixel = (min(min(double(img1)))); % give minimum pixel intensity
maximum_pixel = (max(max(double(img1)))); % give maximum pixel intensity
img2 = uint8(255*(double(img1) - minimum_pixel)/(maximum_pixel-minimum_pixel));
histarrnew=zeros(256,1);
[H W l]=size(img2);




end
