function [ childs ] = Recombination( parents )
%RECOMBINATION Summary of this function goes here
%   Detailed explanation goes here
    
    parent1 = parents(1,:);
    parent2 = parents(2,:);
    
    crosspoint  = randsample(1:6,1);
    %-------------------child 1-------------------
    a1 = parent1(1:crosspoint);
    
    b1 = [parent2(crosspoint+1:end) parent2(1:crosspoint)];
    b1(ismember(b1,a1)) = [];
    child1 = [a1 b1];
    %--------------------child 2------------------
    a2 = parent2(1:crosspoint);
    
    b2 = [parent1(crosspoint+1:end) parent1(1:crosspoint)];
    b2(ismember(b2,a2)) = [];
    child2 = [a2 b2];
    
    
    childs = [child1 ; child2];
    

end

