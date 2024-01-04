function [histarrnew] = contrast_stretching_histogram(img1)

histarrold=zeros(256,1);
[H W l]=size(img1);
for i=1:H
    for j=1:W
        
         histarrold(img1(i,j)+1)=histarrold(img1(i,j)+1)+1;
    end
end
if l>1
img1=im2gray(img1);
end
minimum_pixel = double(min(min(img1))); % give minimum pixel intensity
maximum_pixel = double(max(max(img1))); % give maximum pixel intensity
img2 = uint8(255*(double(img1) - minimum_pixel)/(maximum_pixel-minimum_pixel));
histarrnew=zeros(256,1);
[H W l]=size(img2);
for i=1:H
    for j=1:W
        
         histarrnew(img2(i,j)+1)=histarrnew(img2(i,j)+1)+1;
    end
end




end
