


population = Initialize();
fitnessofall = zeros(100,1);
for i=1: 100
    fitnessofall(i) = Fitness(population(i,:));

end


for iteration=1:10000
    
    selectedParents = Selectparents(population);
    
    children = Recombination(selectedParents);
    fitnessofchildren = zeros(2,1);
    for j=1:2
        children(j,:) = Mutation(children(j,:));
        fitnessofchildren(j) = Fitness(children(j,:));
    end
   
    population = [population ; children];
    
    fitnessofall = [fitnessofall ; fitnessofchildren];
    
    for j=1:2
        [worstfitness,worstind] = min(fitnessofall);
        population(worstind,:) = [];
        fitnessofall(worstind,:) = [];
    end
    
    [bestfitness,bestind] = max(fitnessofall);
    if bestfitness > 0.5 
        break
    end
    
end
iteration
bestfitness
population(bestind,:)

