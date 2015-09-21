# This line sets up a plotting area that has 3 rows and 2 columns
par(mfrow=c(3,2))

#####"Unimodal Symmetric"
# Randomly sample 100,000 times from the normal distribution with mean
# of 0 and standard deviation of 1:
x <- c(rnorm(100000,0,1))
# Now plot the histogram in gray, with 100 bars, erasing all axis labels
hist(x,col="#cccccc", breaks=100,axes=F,xlab="",main="Unimodal Symmetric")

#### Bimodal Symmetric
# Randomly sample 100000 times from the normal distribution with mean
# of 0 and standard deviation of 1, then again from the normal
# distribution with mean of 4 and standard deviation of 1 (so they have
# distinctly different peaks). Mash all the data together to form x.
x <-c(rnorm(100000,0,1), rnorm(100000,4,1))
hist(x,col="#cccccc",breaks=100,axes=F,xlab="",main="Bimodal Symmetric")
