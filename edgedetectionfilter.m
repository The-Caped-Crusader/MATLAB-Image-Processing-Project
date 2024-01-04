function [sharp_img] = edgedetectionfilter(image)

    sharp_img=image;
    [H, W,L ]=size(image);
    sharp_imag = zeros(H+2, W+2);
   
    for i = 1:H
        for j = 1:W
        
         sharp_imag(i+1,j+1)=image(i,j);
            
        
    end
    end
    filter=ones(3,3);
    for i = 1:3
        for j = 1:3
            filter(i,j)=-1;
        end
    end
    filter(2,2)=8;
    for i=2:H-1
        for j=2:W-1
            sum=0;
            x=1;
            y=1;
            for ii = i-1:i+1  
            for jj = j-1:j+1
                    sum=sum+((filter(x,y) * sharp_imag(ii,jj)));
                    x=x+1;
                    
            end
            y=y+1;
            x=1;
             end
            sharp_img(i,j)=floor(sum);
        end
        end
 

