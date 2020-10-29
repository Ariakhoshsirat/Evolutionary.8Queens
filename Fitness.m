function [ fit ] = Fitness( V )
%FITNESS Summary of this function goes here
%   Detailed explanation goes here
    penalty=0;
    for  i=1 : 8 
		up = V(i);
		down = num1;
        for j=i+1 : 8
			up = up+1;
			down = down-1;
            if V(j)==up || V(j)==down 
				penalty = penalty + 2;
            end
        end
    end
	
	fit = 1/penalty;

end

