function [img_power] = power_linear(img,y,c)

[H W l]=size(img);
img_power=zeros(H,W);
img_power=double(img_power);
if l>1
for i=1:H
    for j=1:W
       img_power(i,j)=img(i,j,1)*0.7+img(i,j,2)*0.2+img(i,j,3)*0.1; 
    end
end
img_power=im2double(img_power);
else
    img_power=im2double(img);
end

for i=1:H
    for j=1:W
       img_power(i,j)=(c)*(img_power(i,j)^y) ; 
    end
end
img_power=im2uint8(img_power);


end