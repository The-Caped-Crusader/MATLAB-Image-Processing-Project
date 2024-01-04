function [img_grey_to_binary] = greytobinary(img)
[H, W,L ]=size(img);
imgnew=zeros(H,W);
imgnew=double(imgnew);
if L>1
for i=1:H
    for j=1:W
       imgnew(i,j)=img(i,j,1)*0.7+img(i,j,2)*0.2+img(i,j,3)*0.1; 
    end
end

imgnew=uint8(imgnew);
else
    imgnew=img;
end


img_grey_to_binary=zeros(H,W);
for i=1:H
    for j=1:W
        if imgnew(i,j)>128
            img_grey_to_binary(i,j)=1;
        
        else
           img_grey_to_binary(i,j)=0; 
        end
    end
end
end




