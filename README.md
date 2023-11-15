# MonteCarloSimulation

The simulation iterates over different sample sizes (n), ranging from 1 to N (26, 50, or 100 here), where N represents the total number of colonies one can get from each experiment. For each distinct sample size n, the simulation generates a pond of N samples with 1 to n. Each sample has an equal probability to be chosen into the pond. Then, n samples are picked out from the pond randomly. The proportion of unique elements in each sample are calculated. This process is repeated 10000 time for each sample size n.

