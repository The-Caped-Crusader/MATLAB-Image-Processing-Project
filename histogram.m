function [histarr] = histogram(img,option)
histarr=zeros(256,1);
[H W l]=size(img);
for i=1:H
    for j=1:W
        if option==1
         histarr(img(i,j)+1)=histarr(img(i,j)+1)+1;
         end
 histarr(img(i,j)+1)=histarr(img(i,j)+1)+1;
       if option==2
         histarr(img(i,j)+1)=histarr(img(i,j,1)+1)+1;
       end
        if option==3
        histarr(img(i,j)+1)=histarr(img(i,j,2)+1)+1;
        end
        if option==4
          histarr(img(i,j)+1)=histarr(img(i,j,3)+1)+1;
        end
    end
 end
      

end