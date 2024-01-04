function [img_inverse_log] = inverse_log(img,c)

[H W l]=size(img);
img_inverse_log=zeros(H,W);
img_inverse_log=double(img_inverse_log);
if l>1
for i=1:H
    for j=1:W
       img_inverse_log(i,j)=img(i,j,1)*0.7+img(i,j,2)*0.2+img(i,j,3)*0.1; 
    end
end
img_inverse_log=im2double(img_inverse_log);
else
    img_inverse_log=im2double(img);
end

for i=1:H
    for j=1:W
       img_inverse_log(i,j)=(c*exp(img_inverse_log(i,j))).^(1/2)-1 ; 
    end
end
img_inverse_log=im2uint8(img_inverse_log);

 

end





