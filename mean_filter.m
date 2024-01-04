function [p] = mean_Filter(image)

         
    [H, W,L ]=size(image);
if L>1
image=rgb2gray(image);
end

    p=image;
    newImg = zeros(H+2, W+2);
   
    for i = 1:H
        for j = 1:W
        
         newImg(i+1,j+1)=image(i,j);
            
        
    end
    end
     

    
     
 for i = 2:H-1
    for j = 2:W-1
        sum = 0; 
        for ii = i-1:i+1  
            for jj = j-1:j+1
                sum = sum + newImg(ii,jj);
            end
        end
       
        p(i,j) = floor(sum/9);
    end
 end
      


    
    
end

