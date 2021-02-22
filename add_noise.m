function [copynew,euclid_dist] = add_noise(input_vector,desired_de,master_lab,noise_intervals)
    min=0;
    max=0;  
    partial_spectr=floor(421/noise_intervals);
    switch desired_de
        case 1
            min=0;
            max=1;
        case 2
            min=1;
            max=2;
        case 3
            min=2;
            max=3.5;
        case 4
            min=3.5;
            max=5;
        case 5
            min=5;
            max=10;
        otherwise
            min=0;
            max=5;
    end 
    euclid_dist=min-1; 
    copynew=[];
    while euclid_dist>=max || euclid_dist<min
        copynew=input_vector;
        copynew=copynew+(random('unif',-1/100,1/100,421,1));
        for i=0:1:(noise_intervals-1)
            switch desired_de
                case 1
                    rand=random('unif',0, 1/1000);
                case 2
                    rand=random('unif',0, 2/100);
                case 3
                    rand=random('unif',0, 5/100); 
                case 4
                    rand=random('unif',0, 7/100);
                case 5
                    rand=random('unif',0, 1/10);
            end
            copynew((i*(partial_spectr-1))+1+i:(i*(partial_spectr-1))+partial_spectr+i)=copynew((i*(partial_spectr-1))+1+i:(i*(partial_spectr-1))+partial_spectr+i)+rand;
        end
        for x=1:1:size(copynew,1)
            if copynew(x,1)<0
                copynew(x,1)=0;
            end
        end
        for center_of_smooth=1:1:noise_intervals-1
            switch center_of_smooth
                case 1
                    copynew(74:95)= smooth(copynew(74:95),5);
                case 2
                    copynew(158:179)= smooth(copynew(158:179),5);
                case 3
                    copynew(242:263)= smooth(copynew(242:263),5);
                case 4
                    copynew(326:347)= smooth(copynew(326:347),5);
            end
        end
        lab = roo2lab(100*copynew','D65/10',(380:1:800));
        euclid_dist=de(master_lab,lab);
    end
end

        