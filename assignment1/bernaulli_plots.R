#assignment start
rm(list = ls())#removing earlier defined values
set.seed(12345)

p <- 0.7
t1 <- 10
t2 <- 50
t3 <- 100
t4 <- 500

bernoulli_data <- sample(0:1,t1, replace = T, prob = c((1-p), p))
#tim is t = 100, replace = T so that we have repetitions
#plot(bernoulli_data)

#part2 <- dbinom(, size = 1, prob = p)


#question 2 starts here
#x <- 0:t1
#plot(x, dbinom(x, size = t1, prob = 0.7), main = "Probability mass function for Bin(13,0.7)")

# x <- 0:t2
# plot(x, dbinom(x, size = t2, prob = 0.7), main = "Probability mass function for Bin(13,0.7)")
# 
# x <- 0:t3
# plot(x, dbinom(x, size = t3, prob = 0.7), main = "Probability mass function for Bin(13,0.7)")
# 
# x <- 0:t4
# plot(x, dbinom(x, size = t4, prob = 0.7), main = "Probability mass function for Bin(13,0.7)")

#x <- 0:t1
#plot(x, pbinom(x, size = t1, prob = 0.7), main = "cumulative mass function for Bin(13,0.7)")

x <- 0:t2
plot(x, pbinom(x, size = t2, prob = 0.7), main = "cumulative mass function for Bin(13,0.7)")
# 
# x <- 0:t3
# plot(x, pbinom(x, size = t3, prob = 0.7), main = "cumulative mass function for Bin(13,0.7)")
# 
# x <- 0:t4
# plot(x, pbinom(x, size = t4, prob = 0.7), main = "cumulative mass function for Bin(13,0.7)")


