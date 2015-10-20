mm.counts <- c(12,6,8,10,6,7)
names(mm.counts) <- c("blue", "brown", "green", "orange", "red", "yellow")
print(mm.counts)
par(mfrow=c(2,1))
# I don't know why the waffle chart isn't working
waffle(mm.counts/10, rows=7, colors=names(mm.counts), title="M&M colors", xlab="1 square = 10 M&Ms")
pie(mm.counts, labels=my.labels, main = "m&m color distribution", col=names(mm.counts))

#install.packages("devtools")
#library(devtools)
#devtools::install_github("hrbrmstr/waffle")
library(waffle)

