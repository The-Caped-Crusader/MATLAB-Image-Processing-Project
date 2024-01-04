function [img_power] = powerl(img)
[H, W ]=size(img);
img_power=zeros(H,W);
img_power=double(img_power);
for i=1:H
    for j=1:W
       img_power(i,j)=img(i,j,1)*0.7+img(i,j,2)*0.2+img(i,j,3)*0.1; 
    end
end
img_power=uint8(img_power);
subplot(2,1,1),imshow(img_power);title('original grey image');
img_power=im2double(img_power);
[H, W]=size(img_power);
output=zeros(H,W);
for i=1:H
    for j=1:W
output(i,j)=uint8(img_power(i,j) .^ (0.6));
    end
end

subplot(2,1,2),imshow(output);title('logarithmic of image(log)');
end