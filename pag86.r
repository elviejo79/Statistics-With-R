url <- "https://raw.githubusercontent.com/NicoleRadziwill/Data-for-R-Examples/master/mnm-clean.csv"
mm.df <- read.csv(url,header=T)
count.colors <- table(mm.df$color)
barplot(count.colors, main="M&M Color Distribution", xlab="M&M Colors", ylab="Number of M&M in bag",
		      col=c("Blue","Brown","Green","Orange","Red","Yellow"))