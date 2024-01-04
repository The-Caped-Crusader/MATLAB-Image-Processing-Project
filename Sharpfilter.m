function [sharp_img] = Sharpfilter(image)
   p=image; 
    [H, W,L ]=size(image);
    newImg = zeros(H+2, W+2);
   
    for i = 1:H
        for j = 1:W
        
         newImg(i+1,j+1)=image(i,j);
            
        
    end
    end
     

    
     
 for i = 2:H-1
    for j = 2:W-1
        sum = uint16(0); % change here
        for ii = i-1:i+1  
            for jj = j-1:j+1
                sum = sum + uint16(newImg(ii,jj)); % and here
            end
        end
       
        p(i,j) = floor(sum/9);
    end
 end
    sharp_img=p;
    [H, W,L ]=size(p);
    newImg = zeros(H+2, W+2);
   
    for i = 1:H
        for j = 1:W
        
         newImg(i+1,j+1)=p(i,j);
            
        
    end
    end
    filter=ones(3,3);
    filter(1,1)=-1;
    filter(2,1)=-2;
    filter(3,1)=-1;
    filter(1,2)=-1;
    filter(2,2)=10;
    filter(3,2)=-1;
    filter(1,3)=-1;
    filter(2,3)=-1;
    filter(3,3)=-1;
    for i=2:H-1
        for j=2:W-1
            sum=0;
            x=1;
            y=1;
            for ii = i-1:i+1  
            for jj = j-1:j+1
                    sum=sum+((filter(x,y) * newImg(ii,jj)));
                    x=x+1;
                    
            end
            y=y+1;
            x=1;
             end
            sharp_img(i,j)=floor(sum);
        end
        end
 

