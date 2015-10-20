dfx <- data.frame(
    group = c(rep('A',8), rep('B',15), rep('C',6)),
    sex = sample(c("M","F"), size=29, replace=T),
    age = runif(n=29,min=18,max=54)
    )


boxplot(dfx$age, main="Distribution of Ages", horizontal=T, ylim=c(10,60), col="lightgray", add=F)
my.labels <- round(fivenum(dfx$age), digits=2)
text(my.labels, y=c(1.15,1.25,1.25,1.25,1.15), labels=my.labels)
    
    