#` The simulation iterates over different sample sizes (n), 
#` ranging from 1 to N (26, 50, or 100 here), where N represents 
#` the total number of colonies one can get from each experiment. 
#` For each distinct sample size n, the simulation generates a pond 
#` of N samples with 1 to n. Each sample has an equal probability to 
#` be chosen into the pond. Then, n samples are picked out from the 
#` pond randomly. The proportion of unique elements in each sample 
#` are calculated. This process is repeated 10000 time for each sample size n. 


#` N samplesize, default is 50(we selected 26, 50 and 100 in our study)
#` times repeated times, default is 10000

MonteCarloSimulation <- function(N=50, times=10000){
  final_all <- sapply(c(1:N),function(i){
    mean(sapply(1:times, function(j){
      length(unique(sample(pond<-c(rep(1:i, floor(N/i)), sample(1:i, N%%i)), i, replace=FALSE)))/i
    }))
  })
  final_all
}

runtime <- system.time({
result_N50_time10000 <- MonteCarloSimulation(N=50, times=10000)
})

result_N50_time10000

runtime
