function [img_negative] = negative(img)
[H W l]=size(img);
img_negative=zeros(H,W);
img_negative=double(img_negative);
for i=1:H
    for j=1:W
       img_negative(i,j)=img(i,j,1)*0.7+img(i,j,2)*0.2+img(i,j,3)*0.1; 
    end
end
img_negative=uint8(img_negative);
subplot(2,1,1),imshow(img_negative);title('original grey image');



output=uint8(abs(double(img_negative)-255));
 
subplot(2,1,2),imshow(output);title('logarithmic of image(log)');
end