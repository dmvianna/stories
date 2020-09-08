
library("rstanarm")

hibbs <- read.table("data/ElectionsEconomy/data/hibbs.dat", header=TRUE)
plot(hibbs$growth, hibbs$vote, xlab="average recent growth in personal income", ylab="incumbent party's vote share")
M1 <- stan_glm(vote ~ growth, data=hibbs)
abline(coef(M1), col="gray")
print(M1)
