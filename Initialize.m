function [ population ] = Initialize(  )
%INITIALIZE Summary of this function goes here
%   Detailed explanation goes here
    population = zeros(100,8);
    for i=1 : 100 
       population(i,:) = randperm(8);
    end
    
        

end

