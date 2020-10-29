function [ selectedParents ] = Selectparents( population )
%SELECTPARENTS Summary of this function goes here
%   Detailed explanation goes here
    temp = population;
    
    [y,ind] = datasample(temp,5,'Replace',false);
    
    fitnessV = zeros(5,1);
    for i=1:5
        fitnessV(i) = Fitness(y(i,:));
    end
    
    
    [max1, ind1] = max(fitnessV);
    fitnessV(ind1) = 0;
    [max2, ind2] = max(fitnessV);
    
    selectedParents = [y(ind1,:) ; y(ind2,:)];
    
    
        
    

end

