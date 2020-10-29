function [ child ] = Mutation( child )
%MUTATION Summary of this function goes here
%   Detailed explanation goes here
    if(rand < 0.8)
        swappoints = randsample(1:8,2);
        temp = child(swappoints(1));
        child(swappoints(1)) = child(swappoints(2));
        child(swappoints(2)) = temp;
    end
    
end 

