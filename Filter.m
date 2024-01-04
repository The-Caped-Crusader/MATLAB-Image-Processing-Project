function [newImg] = Filter(image)

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
      

 for i = 1:H
        for j = 1:W
        
         image(i,j)=image(i,j)-p(i,j);
            
        
    end
    end
    
    imshow(p);
    
end

