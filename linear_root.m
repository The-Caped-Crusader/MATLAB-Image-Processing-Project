function [img_root] = linear_root(img,c)

[H W l]=size(img);
img_root=zeros(H,W);
img_root=double(img_root);
if l>1
for i=1:H
    for j=1:W
       img_root(i,j)=img(i,j,1)*0.7+img(i,j,2)*0.2+img(i,j,3)*0.1; 
    end
end
img_root=im2double(img_root);
else
    img_root=im2double(img);
end

for i=1:H
    for j=1:W
       img_root(i,j)=c*sqrt(img_root(i,j)) ; 
    end
end
img_root=im2uint8(img_root);


end