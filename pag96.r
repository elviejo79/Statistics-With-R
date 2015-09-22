# First we create a function that creates minimalistic histograms
library(functional)
# plot the histogram in gray, with 100 bars, erasing all axis labels
minimal_hist<-Curry(hist,col="#cccccc", breaks=100,axes=F,xlab="")




# This line sets up a plotting area that has 3 rows and 2 columns
par(mfrow=c(3,2))

#Randomly sample from the normal distribution
x<-c(rnorm(100000,mean=0,sd=1))
minimal_hist(x,main="Unimodal Symmetric")

# We had to sample a lot in order to give the plotted distributian that smooth plateau like-form
minimal_hist(runif(100000,0,6),main="Uniform Symmetric")

# make two samples with different means, so they have different peaks
# Mash all the data together to form x.
x<-c(rnorm(100000,mean=0,sd=1),rnorm(100000,4,1))
minimal_hist(x,main="Bimodal Symmetric")



# Sample two normal distributions so they have different peaks
x<-c(rnorm(60000,0,1),rnorm(100000,4,1))
minimal_hist(x,main="Bimodal Asymmetric")

# beta distribution is sort of normal looking but skewed according to its shap parameters.
# alhpa=2, beta=5
minimal_hist(rbeta(100000,2,5), main="Unimodal skewed right")
minimal_hist(rbeta(50000,5,2), main="Unimodal Skewed Left")