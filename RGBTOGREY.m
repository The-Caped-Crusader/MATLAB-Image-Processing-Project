function [grey] = RGBTOGREY(RGB,option)
[H W L]=size(RGB);
grey=zeros(H,W);
grey=double(grey);
if L>1
for i =1 : H
    for j= 1:W
        if option==1
        grey(i,j)=(RGB(i,j,1)+RGB(i,j,2)+RGB(i,j,3))/3;
        end
        if option==2
         grey(i,j)=RGB(i,j,1)*0.7+RGB(i,j,2)*0.2+RGB(i,j,3)*0.1;   
        end
        if option==3
         grey(i,j)=RGB(i,j,1);
        end
        if option==4
         grey(i,j)=RGB(i,j,2);
        end
        if option==5
         grey(i,j)=RGB(i,j,3);
        end
    end
end
grey=uint8(grey);
else 
    grey=RGB;
end