#* platRandomHist.R
#* 
#* Author: Ellis Simms
#* 
#* Purpose: A function that will generate a random sample of
#* normal 'observations' and plot a histogram of the data.
#* 
#* Inputs:
#*    num_pts = the number of observations to generate 
#*    mu = the theoretical mean of the normal
#*    sigma = the theoretical standard deviation
#*    seed = the random generation seed
#*    
#* Outputs:
#*     A plot of the histogram
#*     Random_values = vector with the random values
#*     Mean_Random_Values = Mean for the Random_values
#*     SD_Random_values = SD for the Random_values

plotRandomHist <- function(num_pts=30,mu=0,sigma=1,seed=NULL, meanColor = 'royalblue'){
  set.seed(seed)
  x <- rnorm(n=num_pts,mean=mu,sd=sigma)
  mean_x <- mean(x)
  hist(x)
  abline(v=mean_x, col=meanColor,lwd=5)
  # The last line of code in the function
  # is output! from the function 
  list(Random_values = x, 
       Mean_Random_Values = mean_x,
       SD_Random_values = sd(x))
}

plotRandomHist(seed=1)
