#part a
poisson_data = rpois(50, lambda = 20 * 50)
plot(density(poisson_data), main = "density time 50")
plot(ecdf(poisson_data), main = "cdf time 50")

poisson_data2 = rpois(100, lambda = 20 * 100)
plot(density(poisson_data2), main = "density time 100")
plot(ecdf(poisson_data2), main = "cdf time 100")